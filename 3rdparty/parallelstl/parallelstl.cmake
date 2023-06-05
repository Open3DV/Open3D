include(ExternalProject)

ExternalProject_Add(
    ext_parallelstl
    PREFIX parallelstl
    URL https://github.com/oneapi-src/oneDPL/archive/refs/tags/oneDPL-2021.2.0-release.tar.gz
    URL_HASH SHA256=48502d5c149775019ceb79f8a53e1104680f58bd7e0a06cfa9baa30ff6162edc
    DOWNLOAD_DIR "${OPEN3D_THIRD_PARTY_DOWNLOAD_DIR}/parallelstl"
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ""
)

ExternalProject_Get_Property(ext_parallelstl SOURCE_DIR)
set(PARALLELSTL_INCLUDE_DIRS
    "${SOURCE_DIR}/include/"
    ) # "/" is critical.
