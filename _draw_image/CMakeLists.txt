# 1 Feb 2017

add_subdirectory("${_OSNAME}")

list(APPEND _LIBUI_SOURCES
	_draw_image/image.c
)
set(_LIBUI_SOURCES ${_LIBUI_SOURCES} PARENT_SCOPE)

list(APPEND _LIBUI_INCLUDEDIRS
	_draw_image
)
set(_LIBUI_INCLUDEDIRS ${_LIBUI_INCLUDEDIRS} PARENT_SCOPE)
