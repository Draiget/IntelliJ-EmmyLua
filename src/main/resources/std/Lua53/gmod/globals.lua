
--- @private
--- @return boolean
function __gmod_builtin_get_realm() end

--- Whenever Lua script is running on `Client` realm, this field will have value of `true`.
--- @type boolean
_G.CLIENT = __gmod_builtin_get_realm()

--- Whenever Lua script is running on `Server` realm, this field will have value of `true`.
--- @type boolean
_G.SERVER = __gmod_builtin_get_realm()

---
--- Realm: Shared
---
--- Adds simple Get/Set accessor functions on the specified table.
--- Can also force the value to be set to a number, bool or string.
---
--- @overload fun(tab:table, key:any, name:string, force:number):void
--- @param tab table The table to add the accessor functions too.
--- @param key any The key of the table to be get/set.
--- @param name string The name of the functions (will be prefixed with Get and Set).
--- @param force number The type the setter should force to (uses `Enums/FORCE`).
--- @return void
function AccessorFunc(tab, key, name) end

---
--- Defines a global entity class variable with an automatic value in
--- order to prevent collisions with other Enums/CLASS.
--- You should prefix your variable with CLASS_ for consistency.
---
--- @param name string The name of the new enum/global variable.
function Add_NPC_Class( name ) end

---
--- Realm: Menu
---
--- Adds the specified image path to the main menu background pool.
--- Image can be png or jpeg.
---
--- @param path string
function AddBackgroundImage( path ) end

---
--- Realm: Shared
---
--- Marks a Lua file to be sent to clients when they join the server.
--- Doesn't do anything on the client - this means you can use it
--- in a shared file without problems.
---
--- **WARNING!**
--- If the file trying to be added is empty, an error will occur,
--- and the file will not be sent to the client
--- The string cannot have whitespace.
---
--- **NOTE:**
--- This function is not needed for scripts located in lua/autorun/
--- and lua/autorun/client/: they are automatically sent to clients.
--- You can add up to 8192 files. Each file can be up to 64KB compressed (LZMA)
---
--- @param file string The name/path to the Lua file that should be sent, relative to the garrysmod/lua folder. If no parameter is specified, it sends the current file. The file path can be relative to the script it's ran from. For example, if your script is in lua/myfolder/stuff.lua, calling `AddCSLuaFile("otherstuff.lua")` and `AddCSLuaFile("myfolder/otherstuff.lua")` is the same thing.
function AddCSLuaFile( file ) end

---
--- Realm: Server
---
--- Adds the specified vector to the PVS which is currently building.
--- This allows all objects in visleafs visible from that vector to be drawn.
---
--- @param position Vector The origin to add.
function AddOriginToPVS( position ) end

---
--- Realm: All
---
--- Executes a Lua script.
---
--- @generic V
--- @param fileName string The name of the script to be executed. The path must be either relative to the current file, or be an absolute path (relative to and excluding the lua/ folder).
--- @return V Anything that the executed Lua script returns.
function include( fileName ) end

---
--- Realm: All
---
--- Recursively prints the contents of a table to the console.
---
--- @overload fun(tableToPrint:table)
--- @overload fun(tableToPrint:table, indent:number)
--- @param tableToPrint table The table to be printed
--- @param indent number Number of tabs to start indenting at. Increases by 2 when entering another table.
--- @param done table Internal argument, you shouldn't normally change this. Used to check if a nested table has already been printed so it doesn't get caught in a loop.
function PrintTable( tableToPrint, indent, done ) end

---
--- Realm: All
---
--- Just like `Msg`, except it can also print colored text, just like `chat.AddText`.
---
--- @vararg any ... Values to print. If you put in a color, all text after that color will be printed in that color.
function MsgC( ... ) end

---
--- Realm: All
---
--- Writes every given argument to the console.
---
--- Automatically attempts to convert each argument to a string. (See tostring)
---
--- Unlike print, arguments are not separated by anything. They are simply concatenated.
---
--- Additionally, a newline isn't added automatically to the end, so subsequent Msg or print operations will continue the same line of text in the console. See MsgN for a version that does add a newline.
---
--- The text is blue on the server, orange on the client, and green on the menu:
---
--- @vararg any ... List of values to print.
function Msg( ... ) end

---
--- Returns whether an object is valid or not. (Such as `Entity`s, `Panels`, custom table objects and more).
--- Checks that an object is not `nil`, has an `IsValid` method and if this method returns `true`.
---
--- @param toBeValidated any
--- @return boolean `True` if the object is valid.
function IsValid( toBeValidated ) end

---
--- Formats the specified values into the string given. Same as `string.format`.
---
--- @vararg any
--- @param format string
--- @return string The formatted string
function Format( format, ... ) end
