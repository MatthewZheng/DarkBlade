import UnityEngine

class enemyStats2 (MonoBehaviour): 

	
	public enemyHealth as int
	public enemyDef as int
	public enemyAttack as int
	public player as playerStats


	def Start():
		enemyHealth = 300
		enemyDef = 5
		enemyAttack = 50 
		
	def Update():
		if enemyHealth <= 0:
			death()
		
	def OnCollisionStay2D(col as Collision2D):
		//if(Time.deltaTime%2==0):
		if col.gameObject.tag == "Player":
				player.playerHealth-=(enemyAttack-player.playerDef)
		
	def OnCollisionEnter2D(col as Collision2D):
		if col.gameObject.tag == "Player":
				player.playerHealth-=(enemyAttack-player.playerDef)
	
	def death():
		GameObject.Destroy(gameObject)
		