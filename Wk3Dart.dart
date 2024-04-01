abstract class Drawable {
  void draw();
}
class Shape implements Drawable {
  final String color;
  Shape(this.color);

  @override
  void draw(){
    print("Drawing a $color shape");
  }
}

List<String> readFile(String filename) {
  return [
    "red", "blue"
  ];
}

void main(){
  final data = readFile("shapes.txt");
  final shapes = data.map((color) => Shape(color)).toList();

  for (final shape in shapes) {
    shape.draw();
  }
}