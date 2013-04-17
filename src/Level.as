package  
{
	import starling.display.Sprite;
	
	public class Level extends Sprite
	{
		private var matrix:Array;
		
		public function Level() 
		{
			createTiles();
			drawTiles();
		}	
		
		private function createTiles():void 
		{
			matrix = [];
			
			for (var i:int = 0; i < 3; i++)
			{
				var row:Array = [new Tile(), new Tile(), new Tile()];
				matrix.push(row);
			}
		}
		
		private function drawTiles():void
		{
			//addChild(
		}
	}
}