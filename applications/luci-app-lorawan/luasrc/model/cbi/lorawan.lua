-- Copyright (C) 2019 LPN Plant
-- Licensed to the public under the Apache License 2.0.

m = Map("lora_pkt_fwd",
    translate("LoRaWAN"),
	translate("LoRaWAN gateway configuration"))

s = m:section(TypedSection, "gateway", "gateway")
s.addremove = false
s.anonymous = false

gateway_ID = s:option(Value, "gateway_ID",
		translate("Gateway EUI"),
		translate("Gateway id. Format: aabbaabbaabbaabb"))

server_address = s:option(Value, "server_address",
		translate("LoRaWAN host address"),
		translate("localhost or TTN gateway address"))
server_address.datatype = "host(1)"
server_address.default = "localhost"

serv_port_up = s:option(Value, "serv_port_up",
		translate("Uplink port"),
		translate("Port used to send uplink packets"))
serv_port_up.datatype = "uinteger"
serv_port_up.default = "1680"

serv_port_down = s:option(Value, "serv_port_down",
		translate("Downlink port"),
		translate("Port used to send downlink packets"))
serv_port_down.datatype = "uinteger"
serv_port_down.default = "1680"

return m
