void Event_Create() {
    HookEvent("dod_round_win", Event_RoundWin);
}

public void Event_RoundWin(Event event, const char[] name, bool dontBroadcast) {
    int winTeam = event.GetInt("team");

    UseCase_ResizeLosers(winTeam);
}
