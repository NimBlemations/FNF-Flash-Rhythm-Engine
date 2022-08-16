package frEngine.objects.sprites;

import haxe.Xml;

import openfl.display.Bitmap;
import openfl.utils.Dictionary;

import frEngine.objects.sprites.FRSprite; // tryna fix the copycode problem I have

/**
 * An atlas frame layout.
 */

typedef AtlasFrame = {
	public var x:Int;
	public var y:Int;
	public var width:Int;
	public var height:Int;
	public var frameX:Int;
	public var frameY:Int;
	public var frameWidth:Int;
	public var frameHeight:Int;
}

/**
 * A sprite that includes a spritesheet bitmap.
 * The bitmap crops to the current frame selected.
 * @author Nimblemations
 */

class AtlasSprite extends FRSprite {

	public var spriteSheet:Bitmap;
	public var frames:Array<AtlasFrame>;
	public var offset:Array<Int> = [0, 0];
	
	public function new() {
		
	}
	
	override public function add() {
		trace('Cool!');
	}
	
}