import UnityEngine

class playSounds (MonoBehaviour): 
	
	public enemy as enemyStats
	deadSound as AudioSource

	
	def Start():
		deadSound = GetComponent[of AudioSource]()
		
	def FixedUpdate():
		
		if (enemy.enemyDead):
			deadSound.Play()
			enemy.enemyDead = false