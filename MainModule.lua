local HttpService = game:GetService("HttpService")

return function(id) 
	-- Send request to proxy to get asset XML file 
	local asset = HttpService:GetAsync(string.format("https://assetdelivery.rprxy.xyz/v1/assetId/%s?expectedAssetType=Decal", id))
	-- Parse URL
	local location = HttpService:JSONDecode(asset).location
	-- Send a request to the XML file's URL (returns XML as string)
	local xml = HttpService:GetAsync(location)
	-- Get the url by matching
	local url = xml:match("<url>(.-)</url>")
	-- Get the id by splitting the equal sign and getting the ladder half
	local result = string.split(url, "=")[2]
 
	return result
end
