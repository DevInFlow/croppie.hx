package ;
import js.Promise;
import js.html.Element;
@:native("Croppie") extern class Croppie{
    public function new(element:Element, ?opt:CroppieOptions) {}
    public function get():Dynamic;
    public function bind(url:String, ?points:Array<Float>, ?zoom:Bool, ?orientation:Orientation):Dynamic;
    public function destroy():Void;
    public function result(type:ResultType,?size:Dynamic,?format:String,?quality:Int,?circle:Bool):Promise<Dynamic>;
    public function rotate(degrees:Int):Void;
    public function setZoom(value:Float):Void;

}

typedef CroppieOptions = {
?boundary:Dimension,
?customClass:String,
?enableExif:Bool,
?enableOrientation:Bool,
?enableResize:Bool,
?enableZoom:Bool,
?enforceBoundary:Bool,
?mouseWheelZoom:Dynamic,
?showZoomer:Bool,
?viewport:Dimension,

}

typedef Dimension = {
?width:Float,
?height:Float,
?type:String
}

@:enum abstract Orientation(Int) from Int to Int {
    var UNCHANGED = 1;
    var FLIPPED_HORIZONTALLY = 2;
    var ROTATED_180_DEGREES = 3;
    var FLIPPED_VERTICALLY = 4;
    var FLIPPED_HORIZONTALLY_THEN_ROTATED_LEFT_BY_90_DEGREES = 5;
    var ROTATED_CLOCKWISE_BY_90_DEGREES = 6;
    var FLIPPED_HORIZONTALLY_THEN_ROTATED_RIGHT_BY_90_DEGREES = 7;
    var ROTATED_COUNTERCLOCKWISE_BY_90_DEGREES = 8;
}
@:enum abstract ResultType(String) from String to String {
    var CANVAS = "canvas";
    var BASE64 = "base64";
    var HTML = "html";
    var BLOB = "blob";
    var RAWCANVAS = "rawcanvas";
}
@:enum abstract Size(String) from String to String {
    var VIEWPORT = "viewport";
    var ORIGINAL = "original";
}

