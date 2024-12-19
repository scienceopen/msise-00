from __future__ import annotations

import numpy as np


def latlonworldgrid(latstep: float | int = 5, lonstep: float | int = 5) -> tuple:
    lat = np.arange(-90.0, 90 + latstep, latstep)
    lon = np.arange(-180.0, 180 + lonstep, lonstep)
    glon, glat = np.meshgrid(lon, lat)

    return glat, glon
