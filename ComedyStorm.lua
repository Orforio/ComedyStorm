CSSpellID = 123814; -- SpellID for Storm Unleashed
CSSoundPlaying = false;

print("Comedy Storm Loaded.");

SLASH_COMEDYSTORM1 = '/comedystorm'; -- Toggles between playing and stopping audio
function SlashCmdList.COMEDYSTORM(msg, editBox)
	if (CSSoundPlaying == false) then
    PlayComedyStorm()
    else
    StopComedyStorm()
    end
end

function CSEventHandler(self,event,...)
	local arg1,arg2,arg3,arg4,arg5=...;
	if (event=="UNIT_SPELLCAST_SUCCEEDED") and -- Storm Unleashed begins
		(arg5==CSSpellID) then
			PlayComedyStorm()
	elseif (event=="PLAYER_LEAVE_COMBAT") and -- Fight is over
		(CSSoundPlaying == true) then
			StopComedyStorm()
	end
end

local CSFrameSpell = CreateFrame("FRAME", "ComedyStormSpellFrame");
local CSFrameCombat = CreateFrame("FRAME", "ComedyStormCombatFrame");
CSFrameSpell:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED");
CSFrameCombat:RegisterEvent("PLAYER_LEAVE_COMBAT");
CSFrameSpell:SetScript("OnEvent", CSEventHandler);
CSFrameCombat:SetScript("OnEvent", CSEventHandler);

function PlayComedyStorm()
	PlayMusic("Interface\\AddOns\\ComedyStorm\\ComedyStorm1.mp3");
	CSSoundPlaying = true;
end

function StopComedyStorm()
	StopMusic();
	CSSoundPlaying = false;
end