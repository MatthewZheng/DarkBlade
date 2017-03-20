import UnityEngine

class CamMove (MonoBehaviour): 
	// In GUI Drag the player into this	vvvvvv  (The player thing as playerMovement)
	public player as playerMovement

	
	def FixedUpdate():
		
		tmpPos as Vector3 = Vector3(player.transform.position.x,player.transform.position.y,-1)
		
		transform.position = Vector3.MoveTowards(transform.position,tmpPos,20*Time.deltaTime)