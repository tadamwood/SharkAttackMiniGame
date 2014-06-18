package 
{
	import flash.display.MovieClip;
	public class Enemy extends MovieClip 
	{
		public var xSpeed:Number;	//pixels moved to the right per tick
		public var ySpeed:Number;	//pixels moved downwards per tick
		
		public function Enemy( startX:Number, startY:Number ) 
		{
			x = startX;
			y = startY;
			
			xSpeed = 3;
			ySpeed = 0;
		}
		
		public function moveABit():void 
		{
			x = x + xSpeed;
			y = y + ySpeed;
		}
	}
}