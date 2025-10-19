extends WindowIndexed

@onready var CodeIn: = $PanelContainer / MainContainer / CodeIn
@onready var ProgramOut: = $PanelContainer / MainContainer / ProgramOut

const MOD_DIR := "bernier154-write_program"
var mod_dir_path = ModLoaderMod.get_unpacked_dir().path_join(MOD_DIR)


func process(delta: float) -> void :
	ProgramOut.production = CodeIn.count / 1000
	ProgramOut.add( CodeIn.count / 1000)

func export() -> Dictionary:
	return super().merged({
		"filename": "../../"+ mod_dir_path.replace('res://','') +"/scenes/"+scene_file_path.get_file(), 
	},true)

func save() -> Dictionary:
	return super().merged({
		"filename": "../../"+ mod_dir_path.replace('res://','') +"/scenes/"+scene_file_path.get_file(), 
	},true)
