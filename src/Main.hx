package;

import openfl.display.Sprite;
import openfl.display.Stage;
import openfl.Lib;
import openfl.Assets;
import haxe.Timer;

import FREngine.FRGame;
import FREngine.containers.FRState;

/**
 * ...
 * @author Nimblemations
 */
class Main extends Sprite {
	
	var lastTime:Float = 0;
	
	var game:FRGame;
	
	public function new() {
		super();
		
		addEventListener(Event.ENTER_FRAME, enterFrame);
		
		game = new FRGame();
		addChild(game);
		
		// Assets:
		// openfl.Assets.getBitmapData("img/assetname.jpg");
	}
	
	public function enterFrame(event) {
		var elapsedTime = Timer.stamp();
		
		if (lastTime < 0) {
			lastTime = elapsedTime;
			// update();
		} else if (elapsedTime - lastTime > SECONDS_PER_TICK) {
			var count = 0;
			
			while (elapsedTime - lastTime > SECONDS_PER_TICK) {
				if (count > MAX_TICKS_PER_FRAME) {
					lastTime = elapsedTime;
					break;
				}
				
				// update();
				lastTime += SECONDS_PER_TICK;
				++count;
			}
		}
	}
}
