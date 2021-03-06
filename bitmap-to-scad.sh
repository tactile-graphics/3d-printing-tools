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

python3 --version

python3 $TOOLCHAIN_DIR/bitmap_to_scad.py "$@"

