include("AdvancedGodMode.lua")

local plys = player.GetAll()

local canDamage = true

for k,v in pairs(plys) do

	hook.Add( "PlayerShouldTakeDamage", "antigodmode", function( ply, attacker )
		if attacker:IsPlayer() and attacker:HasGodMode() == true then
			return false
		end
	end)
end

