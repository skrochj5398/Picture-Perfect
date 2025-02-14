extends Sprite2D

@onready var silhouette: Sprite2D = $"../Silhouette"
@onready var hasReturned: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)) and not hasReturned:
			print("You clicked on a sprite!")
			#position = silhouette.position
			$StickerAnimationPlayer.play("Return")
			hasReturned = true;
			
