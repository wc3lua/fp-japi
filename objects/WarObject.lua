local export = {}

local t = export

---@class warObject

---@return warObject
local function newWarObject()
    local object = {} ---@type warObject

    -- All fields available on this object
    object.all = {}

    -- This object's id as a string.
    object.id = ''

    -- Parent's id as a string. Undefined if this object has no parent, i.e. 
    -- it is defined by WC3 data itself.
    object.parentId = ''

    -- This object's type.
    object.type = ''

    return object
end

-- Clones this object, creating an independent instance of it.
-- This instance can then be assigned into a `WarObjects` object
-- to insert it into the map.
---@param warObject warObject
---@return warObject
function t.clone(warObject) end

-- /**
--  * Gets a field on this object.
--  *
--  * Two syntaxes are accepted for the `field` parameter:
--  * 1) SLK-like, where fields have a 'proper' name, sometimes postfixed with
--  * a number to indicate which level of the field to get/set. Examples include,
--  * `Name`, `DataA1`, `DataC10`, etc.
--  * 2) Raw, using a four-character rawid, optionally with a `+X` postfix
--  * to indicate which level to use, for fields which can have multiple levels.
--  * E.g.: `unam`, `xxxx+1`, `xxxx+10`
--  *
--  * The returned value will be automatically converted to the appropriate type.
--  * WC3 has 4 fundamental types for fields:
--  * real - standard float value
--  * unreal - float value clamped between 0.0 and 1.0
--  * int - standard signed integer value
--  * string - null-terminated string
--  *
--  * Setting a field into null/undefined will reset it to its default value.
--  */
---@param warObject warObject
---@param field string
---@return string|number
function t.getField(warObject, field) end

-- /**
--  * Sets a field on this object.
--  *
--  * See `getField` for field name syntax.
--  *
--  * Setting a field into null/undefined will reset it to its default value.
--  */
---@param warObject warObject
---@param field string
---@param value string|number
function t.setField(warObject, field, value) end

return t, newWarObject