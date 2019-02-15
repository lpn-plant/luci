-- Copyright (C) 2019 LPN Plant
-- Licensed to the public under the Apache License 2.0.

module("luci.controller.lorawan", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/lora_pkt_fwd") then
		return
 	end
	entry({"admin", "services", "lorawan"}, cbi("lorawan"), _("LoRaWAN"), 90)
	entry({"mini", "services", "lorawan"}, cbi("lorawan"), _("LoRaWAN"), 90)
end
