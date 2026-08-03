#!/bin/bash
#
# Sets up the environment variables for c++ stdlib paths.

# shellcheck source=../../build/envsetup.sh
source "$GITHUB_WORKSPACE/build/envsetup.sh" highest
{
echo "ARCH_SPECIFIC_CPP_STDLIB_PATH=$ARCH_SPECIFIC_CPP_STDLIB_PATH"
echo "GENERIC_CPP_STDLIB_PATH=$GENERIC_CPP_STDLIB_PATH"
echo "VSOMEIP_INSTALL_PATH=$RUNNER_TEMP/vsomeip-install"
} >> "$GITHUB_ENV"
mkdir -p "$RUNNER_TEMP/vsomeip-install"
