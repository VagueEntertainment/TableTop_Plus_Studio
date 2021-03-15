extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.set_tab_by_name("Games")
	#Globals.connect("tab_selected",self,"_on_tab_selected")
	#Globals.connect("focus_tab",self,"_on_tab_selected")
	#Globals.connect("focus_tab_by_name",self,"_on_tab_selected_by_name")
	Globals.connect("tab_changed",self,"_on_tab_changed")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#func _on_tab_selected(object):
#	print("From Main ",object.name)
#	$background.color = object.highlight_color

#func _on_tab_selected_by_name(object):
#	print("From Main ",object.name)
#	$background.color = object.highlight_color

func _on_tab_changed(object):
	print("tab_changed ",object.name)
	$background.color = object.highlight_color
