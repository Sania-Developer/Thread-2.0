class SearchListItem{
  final String idName;
  final String name;
  final String followers;
  final String image;
  SearchListItem({
    required this.idName,
    required this.name,
    required this.image,
    required this.followers
  });
}
List<SearchListItem> searchlistItem=[
  SearchListItem(name: 'Instagram',idName: "instagram", image: "images/instagram.jpg", followers: "6.5M"),
  SearchListItem(name: 'Youtube',idName: "youtube", image: "images/youtube.jpg", followers: "1.1M"),
  SearchListItem(name: 'Figma',idName: "figma", image: "images/figma_logo.jpg", followers: "74K"),
  SearchListItem(name: 'Netflix US',idName: "netflix", image: "images/netflix_logo.png", followers: "2.3M"),
  SearchListItem(name: 'Abhishvek',idName: "abhishvek", image: "images/pic5.jpg", followers: "50k"),
  SearchListItem(name: 'Flutter Developers',idName: "flutter.developers", image: "images/flutter_developers.jpg", followers: "50k"),
  SearchListItem(name: 'Flutter Developers',idName: "flutter_app_developers", image: "images/pic7.jpg", followers: "50k"),
  SearchListItem(name: 'Abdulrehman',idName: "abdulgenrehman10", image: "images/pic8.jpg", followers: "32k"),

];