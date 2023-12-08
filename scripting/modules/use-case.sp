void UseCase_ResizeLosers(int winTeam) {
    if (!Variable_PluginEnabled()) {
        return;
    }

    for (int client = 1; client <= MaxClients; client++) {
        if (IsClientInGame(client)) {
            UseCase_ResizePlayer(client, winTeam);
        }
    }
}

static void UseCase_ResizePlayer(int client, int winTeam) {
    int clientTeam = GetClientTeam(client);
    bool isLoser = clientTeam > TEAM_SPECTATOR && clientTeam != winTeam;

    if (isLoser) {
        float scale = Variable_PlayerScale();

        ResizePlayer(client, scale, RESIZE_MODE_ROUND_START);
    }
}
