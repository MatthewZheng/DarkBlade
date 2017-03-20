import UnityEngine

class playerStats (MonoBehaviour): 

	//public playSpdRef as playerMovement
	public playerHealth as int
	public playerDef as int
	public playerAttack as int
	public hasHitChest as bool 
	public enemy as enemyStats 
	public enemy2 as enemyStats2


	def Start():
		//playSpdRef.moveSpeed = 3
		hasHitChest = false
		playerHealth = 4000
		playerDef = 5
		playerAttack = 100 
		
	def Update():
		attack()
		/*if (enemy.enemyHealth <= 0):
			enemy.death()
		if (enemy2.enemyHealth <= 0):
			enemy2.death()*/
		if playerHealth <= 0:
			GameObject.Destroy(gameObject)
		
	def attack():
		if (Input.GetKeyDown("space") and Vector3.Distance(enemy.transform.position, transform.position)<=0.61):
			enemy.enemyHealth-=(playerAttack-enemy.enemyDef)
		elif (Input.GetKeyDown("space") and Vector3.Distance(enemy2.transform.position, transform.position)<=0.61):
			enemy2.enemyHealth-=(playerAttack-enemy2.enemyDef)

	/*def OnTriggerStay(col as Collider):
		if (Input.GetKeyDown("space")):
			if col.gameObject.tag == "enemy":
				enemy.enemyHealth-=(playerAttack-enemy.enemyDef)*/
				
