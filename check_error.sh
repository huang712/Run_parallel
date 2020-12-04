#!/bin/bash

#grep -r -c "not constant" ./stdout

echo "stderr files larger than 0:"
find ./stderr/ -size +0b