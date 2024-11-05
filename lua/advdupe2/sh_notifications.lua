if CLIENT then
	function AdvDupe2.Notify(msg, typ)
		notification.AddLegacy(msg, typ or NOTIFY_GENERIC, 5)
	end

	net.Receive("AdvDupe2_Notify", function()
		AdvDupe2.Notify(net.ReadString(), net.ReadUInt(3))
	end)
else
	util.AddNetworkString("AdvDupe2_Notify")

	local logger = AdvDupe2._logger:CreateChild("Notifications")

	function AdvDupe2.Notify(ply, msg, typ, serverVisible)
		net.Start("AdvDupe2_Notify")
			net.WriteString(msg)
			net.WriteUInt(typ or 0, 3)
		net.Send(ply)

		if serverVisible then
			if typ == 1 then
				logger:Warn("{} - {}", ply, msg)
			else
				logger:Info("{} - {}", ply, msg)
			end
		end
	end
end