class Event {
  String title;
  String startTime;
  String endTime;
  Category cat;
}

class Category {
  String color;
  String name;
}

class UserData {
  List<Event> userEvents = [];
  List<Event> userCategories = [];
}
