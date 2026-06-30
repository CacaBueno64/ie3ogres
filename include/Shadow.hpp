#pragma once

#include <nitro/types.h>

namespace Shadow {
	extern void Initialize(int nVertices);
	extern void Draw(u8 alpha, int polyID);
	extern void DrawVertices(u8 alpha, int polyID);
}