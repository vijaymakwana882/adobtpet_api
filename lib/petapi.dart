class PetApi {
  String API;
  String Description;
  String Link;
  String Category;

  PetApi(
      {required this.API,
      required this.Description,
      required this.Link,
      required this.Category});

  factory PetApi.fromAPI(Map data) {
    return PetApi(
        API: data['API'],
        Description: data['Description'],
        Link: data['Link'],
        Category: data['Category']);
  }
}
