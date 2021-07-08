# decal2image
Returns a Roblox image ID from a decal ID
## Example usage
```lua
-- Make sure that HttpService is enabled
local d2i = require(7062490293)

local success, result = pcall(function() 
	return d2i(1522361034)
end)

print(result) --> 1522361030
```
