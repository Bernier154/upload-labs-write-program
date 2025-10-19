extends Node

const MOD_DIR := "bernier154-write_program"
const LOG_NAME := "bernier154-write_program:Main"


var mod_dir_path := ""

func _init() -> void:
	mod_dir_path = ModLoaderMod.get_unpacked_dir().path_join(MOD_DIR)


func _ready() -> void:
	get_node("/root/Data").windows['write_program'] = {
		"name": "Write program",
		"icon": "../../"+ mod_dir_path.replace('res://','') +"/textures/icons/code",
		"description": "Use coding speed to create programs.",
		"scene": "../../"+ mod_dir_path.replace('res://','') +"/scenes/window_write_program",
		"group": "",
		"category": "coding",
		"level": 0,
		"requirement": "",
		"hidden": false,
		"attributes":{
			"limit": -1
		},
		"data": {},
		"guide": "Combine two download input into one."
	}
