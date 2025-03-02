function onEvent(name, value1, value2)
	if name == 'Change Stage' then
addLuaScript('stages/'..value1)
loadScript(value1, true)
end
	end