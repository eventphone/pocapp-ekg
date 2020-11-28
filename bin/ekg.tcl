#!/usr/bin/env tclsh8.6
#
# SPDX-FileCopyrightText: 2020 Martin Stoffers
# SPDX-License-Identifier: BSD-3-Clause
#
# This script answering a phone call by playing an EKG sound.

package require ygi
::ygi::idle_timeout 180 20
::ygi::script_timeout 3600
::ygi::start_ivr

## play intro sound and wait for the audio to come through properly
::ygi::play_wait "yintro"
::ygi::sleep 500
set sounds [file join [file dirname [file normalize [info script]]] .. sounds]
::ygi::play_wait "$sounds/ekg/ekg"

