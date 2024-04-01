class_name PlatformerMovement
extends Node

@export var actor:CharacterBody2D   
@export var playerMovementStats:PlataformerMovementStats
@export var sprite:Sprite2D

var playerInputs:Vector2

func _ready(): 
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	actor.move_and_slide()
	
	playerInputs.x = Input.get_axis("ui_left","ui_right")
	playerInputs.y = Input.get_axis("ui_down","ui_up")
	
	Move(playerInputs)
	
func Move(dir:Vector2): 
	actor.velocity = Vector2((dir.x*playerMovementStats.speed), actor.velocity.y)
	if(actor.velocity.x > 0):
		print_debug("Going right")
		sprite.flip_h

		
		
		
	if(actor.velocity.y<0):
		print_debug("Going Left")
		
	
