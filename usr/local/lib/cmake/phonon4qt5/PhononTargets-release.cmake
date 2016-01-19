#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Phonon::phonon4qt5experimental" for configuration "Release"
set_property(TARGET Phonon::phonon4qt5experimental APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Phonon::phonon4qt5experimental PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Qt5::Core;Qt5::Widgets;Phonon::phonon4qt5"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libphonon4qt5experimental.so.4.8.3"
  IMPORTED_SONAME_RELEASE "libphonon4qt5experimental.so.4"
  )

list(APPEND _IMPORT_CHECK_TARGETS Phonon::phonon4qt5experimental )
list(APPEND _IMPORT_CHECK_FILES_FOR_Phonon::phonon4qt5experimental "${_IMPORT_PREFIX}/lib/libphonon4qt5experimental.so.4.8.3" )

# Import target "Phonon::phonon4qt5" for configuration "Release"
set_property(TARGET Phonon::phonon4qt5 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Phonon::phonon4qt5 PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Qt5::Core;Qt5::Widgets;Qt5::DBus"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libphonon4qt5.so.4.8.3"
  IMPORTED_SONAME_RELEASE "libphonon4qt5.so.4"
  )

list(APPEND _IMPORT_CHECK_TARGETS Phonon::phonon4qt5 )
list(APPEND _IMPORT_CHECK_FILES_FOR_Phonon::phonon4qt5 "${_IMPORT_PREFIX}/lib/libphonon4qt5.so.4.8.3" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
