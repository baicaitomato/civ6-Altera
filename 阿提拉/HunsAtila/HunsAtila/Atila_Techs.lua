function OnPlayerDefeat( dplayerID, defeat, eventID)
	--print("Atila Test begin!\n");
	local localPlayer = Game.GetLocalPlayer();
	local pPlayer = Players[localPlayer]
	local dPlayer = Players[dplayerID];
	if (localPlayer and localPlayer >= 0) then		-- Check to see if there is any local player
		-- Was it the local player?
		if (localPlayer == dplayerID) then
			Close();
		end
	end
	--print("Local player defined!\n")
	local dPlayerTechs = dPlayer:GetTechs();
	local pPlayerTechs = pPlayer:GetTechs();
	local pPlayerConfig = PlayerConfigurations[localPlayer];
	if pPlayerConfig:GetLeaderTypeName() == "LEADER_ATILA" then
		for tech in GameInfo.Technologies() do
			if (dPlayerTechs:HasTech(tech.Index) and not pPlayerTechs:HasTech(tech.Index)) then
				pPlayerTechs:SetResearchProgress(tech.Index, pPlayerTechs:GetResearchCost(tech.Index));
			end
		end
	end
end
Events.PlayerDefeat.Add(OnPlayerDefeat);