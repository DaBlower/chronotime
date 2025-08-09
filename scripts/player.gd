extends CharacterBody2D

const SPEED = 700.0
const JUMP_VELOCITY = -800.0
var gravity = 1600
var slammed = false

var can_input = true

var hits = 1

var reset = false # on death

var jumps = 2 # the jumps left (used for double jumps)

var dir = 1 # declaring early bc dashing breaks

var dashing = false
var canDash = true

var onground = true


func _ready() -> void:
	velocity = Vector2.ZERO
	Globals.respawn = self.position
	Dialogic.signal_event.connect(_on_dialogic_signal)
	Engine.time_scale = 1.0
	
func _physics_process(delta: float) -> void:
	if is_on_floor() and not onground and slammed:
		onground = true
	elif is_on_floor() and not onground:
		onground = true
	
	var direction = Input.get_axis("move_left", "move_right") # set direction for dash
	
	Globals.set_player_pos(self.position)
	
	if is_on_floor():
		jumps = 2
		
	if not is_on_floor():
		onground = false
		
		if not slammed:
			velocity.y += gravity * delta
		else:
			# slam character to the ground and warp the sprite
			velocity.y = 5000
			$sprite.scale.x = 0.9
			$sprite.scale.y = 2
	else:
		slammed = false
	
	if not slammed and not dashing:
		$sprite.scale.x = lerp($sprite.scale.x, 1.0, 0.2)
		$sprite.scale.y = lerp($sprite.scale.y, 1.0, 0.2)
		
	if Input.is_action_just_pressed("jump") and is_on_floor() and can_input:
		velocity.y = JUMP_VELOCITY
		jumps -= 1
		
	elif Input.is_action_just_pressed("jump") and jumps > 0 and can_input: 
		# handle double jumps
		jumps -= 1
		velocity.y = JUMP_VELOCITY
		# warp player
		$sprite.scale.x = 1.5
		$sprite.scale.y = 0.7
	
	if Input.is_action_just_pressed("slam") and can_input:
		if is_on_floor():
			# give feedback when trying to slam on ground
			$sprite.scale.x = 1.5
			$sprite.scale.y = 0.8
		else:
			slammed = true
	
	if direction and can_input:
		velocity.x = direction * SPEED
		dir = direction
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if dashing:
		velocity.x = dir*2600
		$sprite.scale.x = 3
		$sprite.scale.y = 0.8
		
	if Input.is_action_just_pressed("dash") and canDash and can_input:
		#$whoosh.play()
		dashing = true
		canDash = false
		$dashTimer.start()
		$dashCooldown.start()
		#$particles.process_material.direction = Vector3(dir*1,0,0)
		#$particles.emitting = true
		#$particles.emitting = false
	move_and_slide()
	
func kill(resetScene: bool):
	if resetScene:
		get_tree().reload_current_scene()
	else:
		position = Globals.getSpawn()

func _on_dash_cooldown_timeout() -> void:
	canDash = true
	
func _on_dash_timer_timeout() -> void:
	dashing = false
	$sprite.scale = Vector2(1.0,1.0)

func stop_input(time):
	can_input = false
	await get_tree().create_timer(time).timeout
	can_input = true

func teleport(coordinates: Vector2):
	position = coordinates
	
func _on_dialogic_signal(argument: String):
	if argument == "stop_input":
		can_input = false
	elif argument == "start_input":
		can_input = true
