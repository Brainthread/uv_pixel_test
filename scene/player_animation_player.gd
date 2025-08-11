extends AnimationPlayer

@export var anim : String

func _ready():
	current_animation = anim 
	print(anim)
	print(current_animation)
