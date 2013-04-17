package  
{
	import cards.Card;

	public class Deck 
	{
		private var drawPile:Array;
		private var discardPile:Array;
		
		public function Deck() 
		{
			drawPile = [];
			discardPile = [];
		}
		
		public function drawCards(numCardsToDraw:int):Array
		{
			var cardsToDraw:Array = [];
			
			for (var i:int = 0; i < numCardsToDraw; i++)
			{
				cardsToDraw.push(drawNextCard());
			}
			
			return cardsToDraw;
		}
		
		private function drawNextCard():Card
		{
			if (drawPileIsEmpty())
			{
				shuffle();
			}
			
			return drawPile.pop();
		}
		
		private function drawPileIsEmpty():Boolean
		{
			return drawPile.length == 0;
		}
	
		private function shuffle():void
		{
			while (discardPile.length > 0)
			{
				drawPile.push(discardPile.pop());
			}
			
			drawPile = arrayShuffle(drawPile);
		}
		
		private function arrayShuffle(array_arr:Array):Array
		{
		   for (var i:Number = 0; i < array_arr.length; i++)
		   {
			  var randomNum_num:int = Math.floor(Math.random() * array_arr.length)
			  var arrayIndex:int = array_arr[i];
			  array_arr[i] = array_arr[randomNum_num];
			  array_arr[randomNum_num] = arrayIndex;
		   }
		  
		   return array_arr;
		}
		
		private function addCard(card:Card):void
		{
			discardPile.push(card);
		}
		
		//trash cards
		
		
	}

}