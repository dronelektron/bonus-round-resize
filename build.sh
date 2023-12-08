#!/bin/bash

PLUGIN_NAME="bonus-round-resize"

cd scripting
spcomp $PLUGIN_NAME.sp -o ../plugins/$PLUGIN_NAME.smx
