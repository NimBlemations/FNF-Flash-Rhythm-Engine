package frEngine;

import frEngine.containers.FRState;
import frEngine.objects.sprites.FRSprite;

import frEngine.utils.TypeCheck;

import openfl.display.Sprite;

/**
 * ...
 * @author Nimblemations
 */
class FRGame extends Sprite {

	public static var currentGameState:FRState;
	
	public var assets:Array<Dynamic> = [];
	
	public function new() {
		super();
	}
	
	/**
	 * Add an object to array.
	 * @param object Object to be added to array.
	 */
	public function add(object:Dynamic) {
		switch (TypeCheck.getTypeName(object)) {
			case "frEngine.objects.sprites.FRSprite":
				var bitmap:FRSprite = object;
				bitmap.add();
				assets.push(bitmap);
			case "frEngine.containers.FRState":
				var state:FRState = object;
				if (currentGameState == null)
					currentGameState = state;
				assets.push(state);
			case null:
				trace('fuck');
		}
	}
	
	public function update(deltaTime:Float) {
		trace(deltaTime);
	}
	
}