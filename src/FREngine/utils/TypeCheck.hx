package FREngine.utils;

/**
 * ...
 * @author ...
 */
class TypeCheck {
	
	// Credit to https://community.openfl.org/t/tutorial-get-the-type-name-not-type-value/1736
	
	public static function getTypeName(object:Dynamic):String {
		switch (Type.typeof(object)) {
			case ValueType.TEnum:
				return Type.getEnumName(Type.getEnum(object));
			case ValueType.TClass:
				return Type.getClassName(Type.getClass(obj));
			default:
				return null;
		}
	}
	
}