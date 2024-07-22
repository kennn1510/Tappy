extends Node2D

@export var pipes_scene: PackedScene

@onready var pipes_holder = $PipesHolder

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_pipes()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func spawn_pipes() -> void:
	var new_pipes = pipes_scene.instantiate()
	new_pipes.position = Vector2(550, 450)
	pipes_holder.add_child(new_pipes)

func _on_spawn_timer_timeout():
	spawn_pipes()
