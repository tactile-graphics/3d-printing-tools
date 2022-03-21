#!/bin/bash

# Copyright 2022 Adventium Labs
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

# http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

echo "The script you are running has basename `basename "$0"`, dirname `dirname "$0"`"
echo "The present working directory is `pwd`"

TOOLCHAIN_DIR=$(dirname "$0")
echo "TOOLCHAIN_DIR $TOOLCHAIN_DIR"

if OPENSCAD=$(which openscad); then
  echo "OpenSCAD found on path at $OPENSCAD"
else
  echo "OpenSCAD not Found"
  exit 1
fi

if PYTHON3=$(which python3); then
  echo "Python3 found on path at $PYTHON3"
else
  echo "Python3 not Found"
  exit 1
fi

python3 --version

# Generate the .scad file
python3 $TOOLCHAIN_DIR/bitmap_to_scad.py "$@" -stl
