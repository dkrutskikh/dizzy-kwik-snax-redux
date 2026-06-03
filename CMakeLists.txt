#-----------------------------------------------------------------------------------------------------------------------
# Copyright (c) 2026, Dmitry Krutskikh
#
# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the
# following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following
# disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following
# disclaimer in the documentation and / or other materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote
# products derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
# INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#-----------------------------------------------------------------------------------------------------------------------

cmake_minimum_required(VERSION 3.31.0 FATAL_ERROR)

project(KwikSnaxRedux LANGUAGES CXX VERSION 0.0.0 HOMEPAGE_URL https://github.com/dkrutskikh/dizzy-kwik-snax-redux/)

# To distinguish between debug and release builds
set(CMAKE_DEBUG_POSTFIX "d")
set(CMAKE_RELWITHDEBINFO_POSTFIX "rd")

# Disable regeneration of build system files by IDEs
set(CMAKE_SUPPRESS_REGENERATION TRUE)

# Enable projects folders
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

#-----------------------------------------------------------------------------------------------------------------------
# User-provided options
#-----------------------------------------------------------------------------------------------------------------------

# Setup configuration types
set(CMAKE_CONFIGURATION_TYPES "Debug;Release;RelWithDebInfo" CACHE STRING "")

# Make default 'Release' build
if (NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE "Release")
endif ()

#-----------------------------------------------------------------------------------------------------------------------
# Compile and linking options
#-----------------------------------------------------------------------------------------------------------------------

if (NOT EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/engine/cmake")
  message(FATAL_ERROR "Engine submodule not initialized. Run: git submodule update --init")
endif()
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/engine/cmake")

include(ConfigureEngine)
set(CMAKE_CXX_EXTENSIONS ON)
include(ConfigureCompiler)

add_executable(${PROJECT_NAME})

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

target_sources(${PROJECT_NAME} PRIVATE
	game/game.cpp
)

# include(GBA)
# gba_create_rom(${PROJECT_NAME})

#include(NDS)
#nds_create_rom(${PROJECT_NAME})

#include(3DS)
#ctr_create_3dsx(${PROJECT_NAME})

#include(GameCube)
#ogc_create_dol(${PROJECT_NAME})

#include(Wii)
#ogc_create_dol(${PROJECT_NAME})
