/*---------------------------------------------------------
;
;	LZ4 block tiny C depacker
;	Written by Arnaud Carré ( @leonard_coder )
;	https://github.com/arnaud-carre/lz4-68k
;
;	LZ4 technology by Yann Collet ( https://lz4.github.io/lz4/ )
;
;---------------------------------------------------------*/
#include "lz4Unpack.h"

static	uint32_t	lz4_rlen(uint32_t size, const uint8_t*& ppRead)
{
	if (15 == size)
	{
		uint8_t v;
		do
		{
			v = *ppRead++;
			size += v;
		}
		while (0xff == v);
	}
	return size;
}

int	lz4BlockUnpack(uint8_t* out, const uint8_t* src, uint32_t srcSize)
{
	const uint8_t* outStart = out;
	const uint8_t* lz4BlockEnd = src + srcSize;
	for (;;)
	{
		const uint8_t token = *src++;
		uint32_t count = uint32_t(token >> 4);
		if (count > 0)
		{
			count = lz4_rlen(count, src);
			for (uint32_t i = 0; i < count; i++)
				*out++ = *src++;

			if (src == lz4BlockEnd)
				break;
		}

		// match len
		uint32_t offset = src[0] | (uint32_t(src[1]) << 8);	// valid on both little or big endian machine
		src += 2;
		count = lz4_rlen(token&15U, src) + 4;
		const uint8_t* r = out - offset;
		for (uint32_t i = 0; i < count; i++)
			*out++ = *r++;
	}
	return int(out - outStart);
}

static uint32_t readU32LittleEndian(const uint8_t* src)
{
	return ((uint32_t(src[3]) << 24) | (uint32_t(src[2]) << 16) | (uint32_t(src[1]) << 8) | (uint32_t(src[0]) << 0));
}

int lz4FrameUnpack(uint8_t* dst, const uint8_t* src)
{
	if (readU32LittleEndian(src) != 0x184D2204)
		return -1;

	if (0x40 != (src[4] & 0xc9))	// check version, no depacked size, and no DictID
		return -1;

	const uint32_t packedSize = readU32LittleEndian(src + 7);
	return lz4BlockUnpack(dst, src+7+4, packedSize);
}
