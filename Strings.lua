-- Collection of strings later formatted by the decompiler for output
local MemeStrings = {
	" Nexus👻",
	" Exceeded timeout.",
	" DECOMPILED BY ADVANCED DECOMPILER V3",
	" DISASSEMBLED...",
	" Decompiled with the Synapse X Luau decompiler.",
	" 𝓓𝓮𝓬𝓸𝓶𝓹𝓲𝓵𝓮𝓭 BY NEXUS LUICE LUA 𝓭𝓮𝓬𝓸𝓶𝓹𝓲𝓵𝓮𝓻",
	"SynapseX Decompiler",
	"NOTE: Beta Preium Decompiler.",
	" params : ...",
	" " .. os.date(),
	" your advertisement could be here"
}

local Strings = {
	SUCCESS = "--" .. MemeStrings[math.random(#MemeStrings)] .. "\n%s",
	TIMEOUT = "-- DECOMPILER TIMEOUT",
	COMPILATION_FAILURE = "-- SCRIPT FAILED TO COMPILE, ERROR:\n%s",
	UNSUPPORTED_LBC_VERSION = "-- PASSED BYTECODE IS TOO OLD AND IS NOT SUPPORTED",
	USED_GLOBALS = "-- USED GLOBALS: %s.\n",
	DECOMPILER_REMARK = "-- DECOMPILER REMARK: %s\n"
}

return Strings
