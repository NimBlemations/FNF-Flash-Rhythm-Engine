package frEngine.utils;

import Type;

/**
 * Checks types.
 * @author tienary
 */
class TypeCheck {
	
	// Credit to https://community.openfl.org/t/tutorial-get-the-type-name-not-type-value/1736
	
	public static function getTypeName(object:Dynamic):String {
		switch(Type.typeof(object)) {
			case TEnum(object):
				return Type.getEnumName(object);
			case TClass(object):
				return Type.getClassName(object);
			default:
				return "";
		}
	}
	
}