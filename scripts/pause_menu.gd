extends CanvasLayer

@onready var pause_btn: Button = $menu_holder/pause_btn

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _unhandled_input( event):
	if event.is_action_pressed("ui_cancel"):
		visible = true
		get_tree().paused = true
		pause_btn.grab_focus()
		
func _on_pause_btn_pressed() -> void:
	get_tree().paused = false
	visible = false

func _on_quit_btn_pressed() -> void:
	get_tree().quit()
