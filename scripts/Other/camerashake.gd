extends Camera2D

#amount of time + intensity of shake
var shakeIntensity: float = 0.0
var activeShaketime: float = 0.0

#control how fast the intensity will fade
#higher number = decaying intensity more 
var shakeDecay: float = 5.0

#track how long shake has been going on for
#tell noise generator where to grab num from
var shakeTime: float = 0.0
#controls how fast ^ ticks
var shakeTimespeed: float = 20.0

# noise texture - camera more natural 
#gradient of nums
var noise = FastNoiseLite.new()

func _physics_process(delta: float) -> void:
	#if screen shake hasnt been completed yet
	if activeShaketime >0:
		# update shake time to change noise grabbing from
		shakeTime += delta * shakeTimespeed
		activeShaketime -= delta
		
		offset = Vector2(
			noise.get_noise_2d(shakeTime, 0) * shakeIntensity,
			noise.get_noise_2d(0, shakeTime) * shakeIntensity
		)
		
		shakeIntensity = max(shakeIntensity - shakeDecay * delta, 0)
	else: 
		offset = lerp(offset, Vector2.ZERO, 10.5 * delta)

func screen_shake(intensity: int, time: float):
	randomize()
	noise.seed = randi()
	noise.frequency = 2.0
	
	shakeIntensity = intensity
	activeShaketime = time
	shakeTime = 0.0
