--!strict

local httpService = game:GetService("HttpService")

-- Luau typing
return function(id: number): (boolean | string?)
	-- Get the xml
	local success, xml = pcall(httpService.GetAsync, httpService, string.format("https://assetdelivery.roproxy.com/v1/asset?id=%i", id))

	-- Returns the id if it was a success, otherwise return false
	return success and string.match(xml, "?id=(.-)</url>")
end
