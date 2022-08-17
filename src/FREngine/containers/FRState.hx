package frEngine.containers;

import frEngine.objects.sprites.FRSprite;
import frEngine.objects.sprites.AtlasSprite;

/**
 * An object that handles certain functioning
 * @author Nimblemations
 */
class FRState {

	// public var curCamera;
	
	public var objects:Array<Dynamic> = [];
	
	public function new() {
		
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
				objects.push(bitmap);
			case null:
				trace('darnit dagnabbit');
		}
	}
	
	public function update(deltaTime:Float) {
		if (objects.length > 0) {
			for (object in objects) {
				switch (Type.getClass(object)) {
					case FRSprite | AtlasSprite: // would this be better?
						var bitmap:FRSprite = object;
						bitmap.update(deltaTime);
					case null:
						trace('null thingy makes me sad');
				}
			}
		}
	}
	
}