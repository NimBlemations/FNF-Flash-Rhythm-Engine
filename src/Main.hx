package;

import openfl.display.Sprite;
import openfl.display.Stage;
import openfl.Lib;
import openfl.Assets;
import haxe.Timer;

import FREngine.containers.FRState;

/**
 * ...
 * @author Nimblemations
 */
class Main extends Sprite {
	
	var lastTime:Float = 0;
	
	public function new() {
		super();
		
		addEventListener(Event.ENTER_FRAME)
		
		// Assets:
		// openfl.Assets.getBitmapData("img/assetname.jpg");
	}
	
	public function enterFrame(event) {
		var elapsedTime = Timer.stamp();
		
		if (lastTime < 0) {
			lastTime = elapsedTime;
		}
	}
}
