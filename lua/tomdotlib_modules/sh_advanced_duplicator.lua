AdvDupe2 = {
	ADDON_NAME = "Advanced Duplicator 2",
	ADDON_FOLDER = "advdupe2",
	DATA_FOLDER = "advdupe2",
	Revision = 51,

	_logger = TomLib.Logging.Logger("Advanced Duplicator 2", "WARN", Color(151, 54, 114))
}

if CLIENT then
	AdvDupe2.InfoText = {}
	AdvDupe2.ProgressBar = {}
	AdvDupe2.FileRenameTryLimit = 256
else
	AdvDupe2.SpawnRate = {
		["default"] = 0.25,
		["ember"] = 0.5,
		["blaze"] = 0.75,
		["inferno"] = 1
	}
end

file.CreateDir(AdvDupe2.DATA_FOLDER)

TomLib.Utilities.Loader(AdvDupe2.ADDON_FOLDER, AdvDupe2._logger:CreateChild("Loader"))
	:ClientFile("file_browser")
	:SharedFile("codec_legacy")
	:SharedFile("codec")
	:ClientFile("file")
	:ClientFile("ghost")
	:SharedFile("notifications")
	:ServerFile("init")
	:ServerFile("clipboard")
	:ServerFile("misc")
	:ServerFile("file")
	:ServerFile("ghost")