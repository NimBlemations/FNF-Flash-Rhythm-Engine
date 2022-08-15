package FREngine;

import FREngine.containers.FRState;
import FREngine.objects.bitmap.FRBitmap;

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
			case "FREngine.objects.bitmap.FRBitmap":
				var bitmap:FRBitmap = object;
				bitmap.add();
				assets.push(bitmap);
			case "FREngine.containers.FRState":
				var state:FRState = object;
				if (currentGameState == null)
					currentGameState = state;
				assets.push(state);
			case null:
				trace('fuck');
		}
	}
	
}