import UnityEngine
#ATTACH TO ENEMIES
#PLAYER WILL NEED LARGE CIRCLE TRIGGER ATTACHED TO HIM
class Aggro (MonoBehaviour): 
	public speed as single
	rbody as Rigidbody2D
	public aggro as bool
	public target as Transform
	
	def Start():
		rbody = GetComponent[of Rigidbody2D]()
		speed = .75 #Change as needed if enemies are too slow
		aggro = false#enemies will not aggro immidiately

	def Update():
		if aggro == true:
			#enemies will walk toward player if player trigger collides with them
			transform.position =Vector3.MoveTowards(transform.position,GameObject.FindWithTag("Player").GetComponent[of Rigidbody2D]().position,speed*Time.deltaTime)
			
		//transform.LookAt(target)

	def OnTriggerEnter2D(col as Collider2D):
		#senses if player trigger has collided with them
		if col.gameObject.tag == "Player":
			aggro = true
		