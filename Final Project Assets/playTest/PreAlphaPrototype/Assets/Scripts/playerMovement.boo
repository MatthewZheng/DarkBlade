import UnityEngine

class playerMovement (MonoBehaviour): 

	rbody as Rigidbody2D
	col as Collider2D
	
	public moveSpeed as int

	def Start():
		rbody = GetComponent[of Rigidbody2D]()
		col = GetComponent[of Collider2D]()
		moveSpeed = 3

	def FixedUpdate():
		# Getting Input
		moveSide = Input.GetAxis('Horizontal')* moveSpeed
		
		#Setting move speed to speed * 1 or -1 depending on key
		move  = Input.GetAxis('Vertical') * moveSpeed
		
		# Vector 2 based on keys for AddForce Function
		movement = Vector2(moveSide,move)

		#Moving player forward or back or side to side
		rbody.AddForce(movement)
			
		# Calling flip function based on where he is moving 									
		if move > 0:
			flipForward()
		elif move < 0:
			flipBack()
		if moveSide < 0:
			flipLeft()
		elif moveSide > 0:
			flipRight()
	
	# All flip function based on testing sprite!!! May need to Change the angle if using other sprite!!!
	
	def flipForward():
		#Changing the z rotation
		transform.localEulerAngles = Vector3(0,0,180)
		
	def flipBack():
		transform.localEulerAngles = Vector3(0,0,0)
		
	def flipRight():
		transform.localEulerAngles =  Vector3(0,0,90)
		
	def flipLeft():
		transform.localEulerAngles =  Vector3(0,0,270)
		
		