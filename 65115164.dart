void main() {
  Person owner = Person(name: 'Look in');

  Engine engine = Engine(model: 'V8', speed: 180);

  Honda car = Honda(brand: 'Honda', model: 'Accord', owner: owner, engine: engine, color: 'Red');

  car.displayCarInfo();

  car.run();
}

class Person {
  String _name;

  Person({required String name}) : _name = name;

  set name(String name) {
    _name = name;
  }

  String get name {
    return _name;
  }
}

class Engine {
  String _model;
  int _speed;

  Engine({required String model, required int speed})
      : _model = model,
        _speed = speed;

  set model(String model) {
    _model = model;
  }

  set speed(int speed) {
    _speed = speed;
  }

  String get model {
    return _model;
  }

  int get speed {
    return _speed;
  }

  void displayEngineInfo() {
    print('Model: $_model, Speed: $_speed km/h');
  }
}

class Car {
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;

  Car({required String brand, required String model, required Person owner, required Engine engine})
      : _brand = brand,
        _model = model,
        _owner = owner,
        _engine = engine;

  set brand(String brand) {
    _brand = brand;
  }

  set model(String model) {
    _model = model;
  }

  set owner(Person owner) {
    _owner = owner;
  }

  set engine(Engine engine) {
    _engine = engine;
  }

  String get brand {
    return _brand;
  }

  String get model {
    return _model;
  }

  Person get owner {
    return _owner;
  }

  Engine get engine {
    return _engine;
  }

  void displayCarInfo() {
    print('Brand: $_brand, Model: $_model, Owner: ${_owner.name}, Engine: ${_engine.model}, Speed: ${_engine.speed} km/h');
  }

  void run() {
    print('The car is running at ${_engine.speed} km/h');
  }
}

class Honda extends Car {
  String _color;

  Honda({required String brand, required String model, required Person owner, required Engine engine, required String color})
      : _color = color,
        super(brand: brand, model: model, owner: owner, engine: engine);

  set color(String color) {
    _color = color;
  }

  String get color {
    return _color;
  }

  @override
  void run() {
    print('The car is running at 120 km/h');
  }

  @override
  void displayCarInfo() {
    print('Brand: $brand, Model: $model, Color: $_color, Owner: ${owner.name}, Engine: ${engine.model}, Speed: ${engine.speed} km/h');
  }
}
