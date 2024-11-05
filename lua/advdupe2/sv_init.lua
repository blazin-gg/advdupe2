util.AddNetworkString("AdvDupe2_RemoveGhosts")
util.AddNetworkString("AdvDupe2_ResetDupeInfo")
util.AddNetworkString("AdvDupe2_StartGhosting")
util.AddNetworkString("AdvDupe2_InitProgressBar")
util.AddNetworkString("AdvDupe2_DrawSelectBox")
util.AddNetworkString("AdvDupe2_RemoveSelectBox")
util.AddNetworkString("AdvDupe2_UpdateProgressBar")
util.AddNetworkString("AdvDupe2_RemoveProgressBar")
util.AddNetworkString("AdvDupe2_ResetOffsets")
util.AddNetworkString("AdvDupe2_SetDupeInfo")
util.AddNetworkString("AdvDupe2_ReceiveFile")
util.AddNetworkString("AdvDupe2_CanAutoSave")

CreateConVar("AdvDupe2_MaxFileSize", "200", FCVAR_ARCHIVE)
CreateConVar("AdvDupe2_MaxEntities", "0", FCVAR_ARCHIVE)
CreateConVar("AdvDupe2_MaxConstraints", "0", FCVAR_ARCHIVE)

CreateConVar("AdvDupe2_MaxContraptionEntities", "10", FCVAR_ARCHIVE)
CreateConVar("AdvDupe2_MaxContraptionConstraints", "15", FCVAR_ARCHIVE)
CreateConVar("AdvDupe2_MinContraptionSpawnDelay", "0.2", FCVAR_ARCHIVE)
CreateConVar("AdvDupe2_MinContraptionUndoDelay", "0.1", FCVAR_ARCHIVE)
CreateConVar("AdvDupe2_MaxContraptionUndoDelay", "60", FCVAR_ARCHIVE)

CreateConVar("AdvDupe2_FileModificationDelay", "5", FCVAR_ARCHIVE)
CreateConVar("AdvDupe2_UpdateFilesDelay", "10", FCVAR_ARCHIVE)

hook.Add("PlayerInitialSpawn", "AdvDupe2_AddPlayerTable", function(ply)
	ply.AdvDupe2 = {}
end)

