import UnityEngine

class loadingLevels (MonoBehaviour): 

	
	public currentLevel as string 
	atDoor = false

	def Start():
		currentLevel = "tutorialLevel"
		
		
		
		
	

	def FixedUpdate():
		
		if ( atDoor == true and Input.GetKeyDown(KeyCode.E)):
			Application.LoadLevel('treasureRoom')
			atDoor = false
			
	
		
		
	def OnCollisionEnter2D(col as Collision2D):


		if col.gameObject.tag == "levelOne":
			currentLevel = "finalproject_mockup"
			Application.LoadLevel(currentLevel)

		if col.gameObject.tag == "stairs":
			currentLevel = "LevelTwo"
			Application.LoadLevel("LevelTwo")
			
			
		elif col.gameObject.tag == "treasureRoom":
			
			atDoor = true 
			
			
		elif col.gameObject.tag == "leaveTreasureRoom":	
			Application.LoadLevel(currentLevel)
		
			
	
		
	//def OnCollisionExit2D(col as Collision2D):
		//atDoor = false

		