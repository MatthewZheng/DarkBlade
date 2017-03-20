import UnityEngine

class enemyRotate (MonoBehaviour): 
	
	public enemy as Transform
	public player as Transform
	
	
	
	def lookup():
		transform.localEulerAngles = Vector3(0,0,0)
		
	def lookDown():
		transform.localEulerAngles = Vector3(0,0,180)
		
	def lookLeft():
		transform.localEulerAngles =  Vector3(0,0,90)
	
			
	def lookRight():
		transform.localEulerAngles =  Vector3(0,0,270)		
	
	
	
	def getRotation():
		if(player.position.y > enemy.position.y):
			lookup()
			
		elif (player.position.y < enemy.position.y):
			lookDown()
		if(player.position.x > enemy.position.x):
			lookRight()
			
		elif(player.position.x < enemy.position.y):
			lookLeft()
	
			
					
							
	
	
	
	
	def Update():
		getRotation()
	
	
	
	
	