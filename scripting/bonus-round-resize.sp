#include <sourcemod>

#include "pr/client"
#include "player-resize"

#include "brr/use-case"

#include "modules/console-variable.sp"
#include "modules/event.sp"
#include "modules/use-case.sp"

#define AUTO_CREATE_YES true

public Plugin myinfo = {
    name = "Bonus round resize",
    author = "Dron-elektron",
    description = "Allows you to resize players at the end of the round",
    version = "1.0.0",
    url = "https://github.com/dronelektron/bonus-round-resize"
};

public void OnPluginStart() {
    Variable_Create();
    Event_Create();
    AutoExecConfig(AUTO_CREATE_YES, "bonus-round-resize");
}
