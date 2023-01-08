
// source model class to parse the json

class Source
{
  String id;
  String name; 

  // constructor
  Source({required this.id ,required this.name});

  // create factory function to map the json

  factory Source.fromJson(Map<String, dynamic> json)
  {
    return Source(id: json['id'] , name: json['name']);
  }
}