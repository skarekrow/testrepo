# config file for phonon library

# known at buildtime
set(PHONON_VERSION "4.8.3")

get_filename_component(currentDir ${CMAKE_CURRENT_LIST_FILE} PATH) # get the directory where I myself am
get_filename_component(rootDir ${currentDir}/../../../ ABSOLUTE) # get the chosen install prefix


set(PHONON_NO_GRAPHICSVIEW true)
set(PHONON_PULSESUPPORT FALSE)
set(PHONON_FOUND_EXPERIMENTAL ON)
set(PHONON_QT_COMPAT_HEADERS OFF)

# install locations
set(PHONON_INCLUDE_DIR "${rootDir}/include/phonon4qt5")

set(PHONON_LIBRARY_DIR "${rootDir}/lib")
set(PHONON_BUILDSYSTEM_DIR "${rootDir}/share/phonon4qt5/buildsystem/")
set(PHONON_LIB_SONAME "phonon4qt5")

if(NOT TARGET Phonon::phonon4qt5)
  include(${currentDir}/PhononTargets.cmake)
endif()

set(PHONON_LIBRARY Phonon::phonon4qt5)
if(PHONON_FOUND_EXPERIMENTAL)
    set(PHONON_EXPERIMENTAL_LIBRARY Phonon::phonon4qt5experimental)
endif(PHONON_FOUND_EXPERIMENTAL)
set(PHONON_LIBRARIES ${PHONON_LIBRARY} ${PHONON_EXPERIMENTAL_LIBRARY})
# The following one is only for compatiblity
set(PHONON_LIBS ${PHONON_LIBRARIES})

set(PHONON_INCLUDES ${PHONON_INCLUDE_DIR} ${PHONON_INCLUDE_DIR}/KDE)

if (PHONON_QT_COMPAT_HEADERS)
    list(APPEND PHONON_INCLUDES ${PHONON_INCLUDE_DIR}/Phonon)
endif()

# Find Internal is included in the backends' finders rather than here.
# http://lists.kde.org/?l=kde-multimedia&m=135934335320148&w=2
