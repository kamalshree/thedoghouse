import 'package:json_annotation/json_annotation.dart';

part 'package:the_doghouse/data/model.g.dart';

@JsonSerializable()
class Response {
  final List<Doggo> body;

  Response(this.body);

  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
}

@JsonSerializable()
class Doggo {

  @JsonKey(name: "petId")
  final int id;
  final String name;
  final Breeds breeds;
  final Media media;
  final String age;
  @JsonKey(name: "sex")
  final String gender;

  Doggo(this.name, this.id, this.breeds, this.media, this.age, this.gender);

  factory Doggo.fromJson(Map<String, dynamic> json) => _$DoggoFromJson(json);
}

@JsonSerializable()
class Breeds {
  final String primaryBreedName;
  final String secondaryBreedName;

  Breeds(this.primaryBreedName, this.secondaryBreedName);

  factory Breeds.fromJson(Map<String, dynamic> json) => _$BreedsFromJson(json);
}

@JsonSerializable()
class Media {
  final List<ImageUrl> images;

  Media(this.images);

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@JsonSerializable()
class ImageUrl {
  final String url;

  ImageUrl(this.url);

  factory ImageUrl.fromJson(Map<String, dynamic> json) => _$ImageUrlFromJson(json);
}
