package;

import openfl.display.Sprite;
import openfl.events.Event;
import openfl.Lib;
import openfl.Assets;

import frEngine.FRGame;
import frEngine.containers.FRState;

import frGame.meta.states.TitleState;

/**
 * The thing that does stuff.
 * @author Nimblemations
 */
class Main extends Sprite {
	
	private var cacheTime:Int;
	private var speed:Float;
	
	var game:FRGame;
	
	public function new() {
		super();
		
		addEventListener(Event.ENTER_FRAME, this_onEnterFrame);
		
		game = new FRGame();
		addChild(game);
		game.add(new TitleState());
		
		cacheTime = Lib.getTimer();
		
		// Assets:
		// openfl.Assets.getBitmapData("img/assetname.jpg");
	}
	
	private function update(deltaTime:Int):Void {
		game.update(deltaTime / 1000);
	}
	
	private function this_onEnterFrame(event:Event) {
		var currentTime = Lib.getTimer();
		update(currentTime - cacheTime); // milliseconds! (rounded up tho)
		cacheTime = currentTime;
	}
}
