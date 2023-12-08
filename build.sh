#!/bin/bash

PLUGIN_NAME="bonus-round-resize"
PLAYER_RESIZE="../../player-resize/scripting/include"

cd scripting
spcomp $PLUGIN_NAME.sp -i include -i $PLAYER_RESIZE -o ../plugins/$PLUGIN_NAME.smx
