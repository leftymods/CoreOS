#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-2.0
#
# Copyright (c) 2025-2026 leftymods
#
# This file is a part of the Armbian Build Framework
# https://github.com/armbian/build/

function armbian_register_artifacts() {

	declare -g -A ARMBIAN_ARTIFACTS_TO_HANDLERS_DICT=(
		# deb-tar
		["kernel"]="kernel"

		# deb
		["u-boot"]="uboot"
		["uboot"]="uboot"
		["firmware"]="firmware"
		["full_firmware"]="full_firmware"
		["fake_ubuntu_advantage_tools"]="fake_ubuntu_advantage_tools"
		["armbian-zsh"]="atrios-zsh"
		["atrios-zsh"]="atrios-zsh"
		["armbian-plymouth-theme"]="atrios-plymouth-theme"
		["atrios-plymouth-theme"]="atrios-plymouth-theme"
		["armbian-base-files"]="atrios-base-files"
		["atrios-base-files"]="atrios-base-files"
		["armbian-bsp-cli"]="atrios-bsp-cli"
		["atrios-bsp-cli"]="atrios-bsp-cli"

		# tar.zst
		["rootfs"]="rootfs"
	)

}
