local export = {}

local t = export

---@class warObjects

---@return warObjects
local function newWarObjects()
    local object = {} ---@type warObjects

    -- /** All WC3 objects of this type in the map. Meant for iteration. */
    object.all = {}

    -- /** Extension string for this WC3 object type. */
    object.ext = ''

    -- /** Type string for this WC3 object type. */
    object.typestr = ''

    -- /** Marker whether any object data here has been modified since loading. Used by Ceres to prevent writing out unmodified object stores. */
    object.isDirty = false

    return object
end

-- /**
-- * Reads WC3 objects from the supplied string into this object.
-- * The expected format is that of WC3 object data files, which is the same for all object data types.
-- */
---@param warObjects warObjects
---@param data string
function t.readFromString(warObjects, data) end

-- /**
-- * Writes the WC3 objects contained in this object out into the string.
-- * The resulting format is that of WC3 object data files, which is the same for all object data types.
-- */
---@param warObjects warObjects
---@return string
function t.writeToString(warObjects) end

-- /**
-- * Gets a reference to a WC3 object inside this storage.
-- *
-- * Index is a rawid. Upon getting an object, you get a
-- * reference which you can use to mutate it.
-- *
-- * For example:
-- *
-- * // getting a reference to an object
-- * let myFoo = currentMap.objects.units['hfoo'] as WarObject
-- * // this will mutate the 'hfoo' unit
-- * myFoo['Name'] = "Crab"
-- * // this will create a clone of the "Crab" 'hfoo' with the id 'xxxx'
-- * currentMap.objects.units['xxxx'] = myFoo
-- *
-- * // this will get a clone instead, which won't modify the original object
-- * let myPea = (currentMap.objects.units['hpea'] as WarObject).clone()
-- * // this will only modify the clone now
-- * myPea['Name'] = "Arnold"
-- * currentMap.objects.units['yyyy'] = myPea
-- */
---@param warObjects warObjects
---@param rawid string
---@return warObject
function t.getObject(warObjects, rawid) end

-- /**
-- * Sets a WC3 object into this storage.
-- *
-- * Index is a rawid.
-- *
-- * When setting an object, Ceres will clone the target
-- * and set the clone's id to that specified here.
-- *
-- * Setting an object into null/undefined will reset it to defaults for a stock
-- * object, and delete it for a custom object.
-- *
-- * See `getObject` fore example usage.
-- */
---@param warObjects warObjects
---@param rawid string
---@param object warObject
function t.setObject(warObjects, rawid, object) end

return t, newWarObjects()