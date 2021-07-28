---
--- Vector
---
--- @class Vector
_G.Vector = {}

---
--- Creates a `Vector` object.
---
--- @overload fun()
--- @overload fun(x:number)
--- @overload fun(x:number, y:number)
--- @param x number The x component of the vector. If this is a Vector, this function will return a copy of the given `vector`. If this is a `string`, this function will try to parse the string as a vector. If it fails, it returns a 0 vector. (See examples)
--- @param y number The y component of the vector.
--- @param z number The z component of the vector.
--- @return Vector
function Vector(x, y, z) end

---
--- Adds the values of the argument vector to the orignal vector.
--- This functions the same as vector1 + vector2 without creating a new vector object,
--- skipping object construction and garbage collection.
---
--- @param vector Vector The vector to add.
function Vector:add( vector ) end