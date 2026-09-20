if SERVER then
	AddCSLuaFile()
	AddCSLuaFile("pacoman_ui/client/cl_pacoman_ui.lua")

	-- add resources
	resource.AddFile("materials/vgui/pacoman_ui/ic_setting.vmt")
	resource.AddFile("materials/vgui/pacoman_ui/ic_namespace.vmt")
	resource.AddFile("materials/vgui/pacoman_ui/ic_add.vmt")
	resource.AddFile("materials/vgui/pacoman_ui/ic_remove.vmt")
else
	hook.Add("InitPostEntity", "PACOMAN_UI_InitPostEntity", function()
		include("pacoman_ui/client/cl_pacoman_ui.lua")
	end)
end
