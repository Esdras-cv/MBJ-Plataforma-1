extends KinematicBody2D

const UP = Vector2(0, -1)
var move = Vector2()

export var gravity = 1000
export var speed = 200
export var jumpForce = -650
var pulando = false

func _physics_process(delta):
	move.y += gravity * delta
	if Input.is_action_pressed("ui_right"):
		move.x = speed
		$AnimatedSprite.animation = "Walk"
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		move.x = -speed
		$AnimatedSprite.animation = "Walk"
		$AnimatedSprite.flip_h = true
	else:
		move.x = 0
		$AnimatedSprite.animation = "Idle"

	if is_on_floor():
		pulando = false
		move.y = 0
		if Input.is_action_pressed("ui_accept"):
			pulando = true
			move.y = jumpForce
	else:
		if pulando:
			$AnimatedSprite.animation = "Jump"

	move_and_slide(move, UP)

func onHit():
	$AnimatedSprite.animation = "Hit"