Pointshop2.Server = class( "Pointshop2.Server" )
local Server = Pointshop2.Server

Server.static.DB = "Pointshop2"

Server.static.model = {
	tableName = "ps2_servers",
	fields = {
		serverHash = "string",
		ip = "string",
		port = "int",
		name = "string",
	}
}

Server:include( DatabaseModel )

function Server:setToCurrentServer( )
	local ip, port = Pointshop2.GetServerIpAndPort( )
	server.ip = ip
	server.port = port
	server.serverHash = Pointshop2.CalculateServerHash( )
	server.name = GetConVarString( "hostname" )
end
