package frEngine;

import frEngine.containers.FRState;
import frEngine.objects.sprites.FRSprite;
import frEngine.objects.sprites.AtlasSprite;

import frEngine.utils.TypeCheck;

import openfl.display.Sprite;

/**
 * The main runny part of the FR Engine.
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
		switch (Type.getClass(object)) {
			case FRSprite: // would this be better?
				var bitmap:FRSprite = object;
				bitmap.add();
				assets.push(bitmap);
			case FRState:
				var state:FRState = object;
				if (currentGameState == null)
					currentGameState = state;
				assets.push(state);
			case null:
				trace('fuck');
		}
	}
	
	public function update(deltaTime:Float) {
		if (assets.length > 0) {
			for (object in assets) {
				switch (Type.getClass(object)) {
					case FRSprite | AtlasSprite: // would this be better?
						var bitmap:FRSprite = object;
						bitmap.update(deltaTime);
					case FRState:
						var state:FRState = object;
						state.update(deltaTime);
					case null:
						trace('dammit');
				}
			}
		}
		trace(deltaTime);
	}
	
}