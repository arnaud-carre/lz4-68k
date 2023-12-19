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

static	size_t	lz4_rlen(size_t size, const uint8_t*& ppRead)
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

int	ymLz4Unpack(uint8_t* out, const uint8_t* src, size_t srcSize)
{
	const uint8_t* outStart = out;
	const uint8_t* lz4BlockEnd = src + srcSize;
	for (;;)
	{
		const uint8_t token = *src++;
		size_t count = size_t(token >> 4);
		if (count > 0)
		{
			count = lz4_rlen(count, src);
			for (size_t i = 0; i < count; i++)
				*out++ = *src++;

			if (src == lz4BlockEnd)
				break;
		}

		// match len
		uint32_t offset = src[0] | (uint32_t(src[1]) << 8);	// valid on both little or big endian machine
		src += 2;
		count = lz4_rlen(token&15U, src) + 4;
		const uint8_t* r = out - offset;
		for (size_t i = 0; i < count; i++)
			*out++ = *r++;
	}
	return int(out - outStart);
}
