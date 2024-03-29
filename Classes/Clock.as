﻿package
{
	import flash.display.MovieClip;
	public class Clock extends Counter
	{
		public var clockDisplay:MovieClip;
		public function Clock()
		{
			super();
		}
		
		override public function updateDisplay():void
		{
			super.updateDisplay();
			
			var frameToSkipTo:Number = currentValue / 1000;
			frameToSkipTo = Math.floor( frameToSkipTo );
			frameToSkipTo = frameToSkipTo + 1;
			while ( frameToSkipTo > 12 )
			{
				frameToSkipTo = frameToSkipTo - 12;
			}
			clockDisplay.gotoAndStop( frameToSkipTo );
		}
	}
}