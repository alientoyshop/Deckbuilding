package
{
	import flash.display.Sprite;
 
	import starling.core.Starling;
	import starling.display.Image;
	import starling.textures.Texture;
 
	public class Main extends Sprite
	{
		private var mStarling:Starling;
 
		public function Main()
		{
 
			// create our Starling instance
			mStarling = new Starling(Game, stage);
 
			// set anti-aliasing (higher the better quality but slower performance)
			mStarling.antiAliasing = 1;
 
			// start it!
			mStarling.start();
 
		}
	}
}

 