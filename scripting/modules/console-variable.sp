static ConVar g_pluginEnabled;
static ConVar g_playerScale;

void Variable_Create() {
    g_pluginEnabled = CreateConVar("sm_bonusroundresize_enable", "1", "Enable (1) or disable (0) plugin");
    g_playerScale = CreateConVar("sm_bonusroundresize_player_scale", "0.5", "Player scale");
}

bool Variable_PluginEnabled() {
    return g_pluginEnabled.IntValue == 1;
}

float Variable_PlayerScale() {
    return g_playerScale.FloatValue;
}
