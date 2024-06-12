#!/bin/bash

PLUGIN_NAME="bonus-round-resize"
BONUS_ROUND_EVENTS="../../bonus-round-events/scripting/include"
PLAYER_RESIZE="../../player-resize/scripting/include"

cd scripting
spcomp $PLUGIN_NAME.sp -i $BONUS_ROUND_EVENTS -i $PLAYER_RESIZE -o ../plugins/$PLUGIN_NAME.smx
