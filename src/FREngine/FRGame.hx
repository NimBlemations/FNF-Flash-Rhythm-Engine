package FREngine;

import FREngine.containers.FRState;
import FREngine.sprites.FRSprite;

import FREngine.utils.TypeCheck;

/**
 * ...
 * @author ...
 */
class FRGame {

	public static var currentGameState:FRState;
	
	public var assets:Array<Dynamic> = [];
	
	public function new() {
		
	}
	
	public function add(object:Dynamic) {
		switch (TypeCheck.getTypeName(object)) {
			case "FREngine.sprites.FRSprite":
				var sprite:FRSprite = object;
				sprite.add();
				assets.push(sprite);
			case "FREngine.containers.FRState":
				var state:FRState = object;
				if (currentGameState == null)
					currentGameState = state;
			case null:
				trace('fuck');
		}
	}
	
}