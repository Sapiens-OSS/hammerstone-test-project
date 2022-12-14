--- HTM: controller.lua
--- @author SirLich

-- Hammerstone
local objectManager = mjrequire "hammerstone/object/objectManager"
local json = mjrequire "hammerstone/utils/json"

local mod = {
	loadOrder = 1,
}

function mod:onload(controller)
	mj:log("Hello world from HTM")

	local modPath = fileUtils.getSavePath("mods")
	local configPath = modPath .. "/hammerstone-test-mod/hammerstone/objects/tallPot.json"

	local configString = fileUtils.getFileContents(configPath)

	local lua_value = json:decode(configString)

	objectManager:registerObject(lua_value)

	-- local pretty_json_text = json:encode_pretty(lua_value)

end

return mod