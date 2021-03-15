extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal tab_selected(name)
signal focus_tab(object)
signal focus_tab_by_name(tab)
signal tab_changed(object)
var current_tab
var old_tab
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if old_tab != current_tab:
		emit_signal("tab_changed",current_tab)
		old_tab = current_tab
	
	pass


#######

# Tab functions, at some point it should be moved to the VE-Tab list code. But not today.

######

func add_tab(object):
	pass
	
func remove_tab(object):
	pass

func set_tab(object):
	emit_signal("focus_tab",object)

func set_tab_by_name(tab):
	emit_signal("focus_tab_by_name",tab)
