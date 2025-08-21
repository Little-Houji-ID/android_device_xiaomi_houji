#!/bin/sh
PATCH_LOC=$PWD/device/xiaomi/houji/patch
cd frameworks/base
git am --abort
git am $PATCH_LOC/0001-fixup-miuicamera.patch
cd ../..
