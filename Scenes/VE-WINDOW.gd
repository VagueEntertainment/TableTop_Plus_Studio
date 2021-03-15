extends PanelContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.connect("tab_selected",self,"_on_tab_selected")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_size().y != get_parent().get_size().y - 60:
		set_size(Vector2(get_parent().get_size().x,get_parent().get_size().y - 60))
	#window_resize()
	pass

func _on_tab_selected(object):
	for views in get_children():
		if views.name != object.name:
			views.hide()
		else:
			views.show()


func _on_Load_focus(object):
	$Games/Load.show()
	$Games/New.hide()
	pass # Replace with function body.


func _on_New_focus(object):
	$Games/New.show()
	$Games/Load.hide()
	pass # Replace with function body.
