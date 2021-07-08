# decal2image
A bite-sized module that converts decal IDs to image IDs. Unlike other implementations, this doesn't subtract and check but rather directly gets the image ID through the AssetDelivery API.
## Example usage
```lua
-- Make sure that HttpService is enabled
local d2i = require(7062490293) --returns id or false if it fails to retrieve the id

print(d2i(1522361034)) --> 1522361030
```
