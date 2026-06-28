#pragma once

// clang-format off
#include <nitro/fs/overlay.h>  // for FSOverlayID
#include <nitro/types.h>       // for BOOL
// clang-format on

namespace Overlay {

BOOL Load(FSOverlayID ovID);

} /* namespace Overlay */
