extends CharacterBody2D

@onready var coyote_time: Timer = $CoyoteTime
@onready var sprite_2d: Sprite2D = $Sprite2D

const UP_DIRECTION := Vector2.UP # change this to allow walking on walls or the direction of gravity

@export var speed := 600.0 # := means that the value and TYPE are equal
@export var jump_strength := 700.0 # how strong a jump is (the velocity added)
@export var maximum_jumps := 2 # to allow for double jumping
@export var double_jump_strength := 600.0 # a weaker jump strength for double jumps
var was_on_floor := false
var jumps_made := 0

func _physics_process(delta: float) -> void:
	# variables
	var is_falling := velocity.y > 0.0 and not is_on_floor()
	var is_jumping := Input.is_action_just_pressed("jump") and (is_on_floor() or !coyote_time.is_stopped()) # jumps if key is pressed and is on floor or coyote time hasn't ended
	var is_double_jumping := Input.is_action_just_pressed("jump") and is_falling and coyote_time.is_stopped()
	var is_jump_cancelled := Input.is_action_just_released("jump") and velocity.y < 0.0
	var is_idle := is_on_floor() and is_zero_approx(velocity.x)
	var is_running := is_on_floor() and not is_zero_approx(velocity.x)
	
	var direction := Input.get_axis("move_left", "move_right") # move_left is negative and move_right is positive

	velocity.x = direction * speed
	
	if not is_on_floor() and was_on_floor:
		coyote_time.start()
	
	was_on_floor = is_on_floor()
		
	
	# handle jumps
	if is_jumping:
		jumps_made += 1
		velocity.y = -jump_strength
	elif is_double_jumping:
		jumps_made += 1
		if jumps_made <= maximum_jumps:
			velocity.y = -double_jump_strength
	elif is_jump_cancelled:
		velocity.y = 0.0 # stops velocity building up when standing still
	elif is_idle or is_running:
		jumps_made = 0
	else:
		velocity += get_gravity() * delta
	
	move_and_slide()
