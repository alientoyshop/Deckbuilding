package
{
	import cards.Card;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Game extends Sprite
	{
		public function Game()
		{
			addEventListener(Event.ADDED_TO_STAGE, onAdded);
		}
		private function onAdded ( e:Event ):void
		{
			var level:Level = new Level();
			
			addChild(level);
			
			var player:Player = new Player();
			
			//player
				//deck
					//cards
				//position
				
			//monster
				//position
	
		}
	}
}