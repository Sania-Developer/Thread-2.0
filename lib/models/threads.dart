class Threads{
  String profileImg;
  String name;
  String time;
  String contentText;
  String? postImage;
  int likes;
  int replies;
  bool verified;
  bool isImage;
  bool isMe;

  Threads({
  required this.profileImg,
  required this.name,
  required this.time,
  required this.verified,
  required this.contentText,
  required this.likes,
  required this.replies,
  this.postImage,
  required this.isImage,
  required this.isMe,
});
}

List<Threads> threadslist=[

  Threads(profileImg: 'images/instagram.jpg', name: 'instagram', time: '1h', verified: true, contentText: 'when you type lol but actually look like 😐', likes: 30000, replies: 3000, isImage: false, isMe: false, postImage: ''),
  Threads(profileImg: 'images/youtube.jpg', name: 'youtube', time: '6h', verified: true, contentText: 'gotta get down on friday', likes: 6000, replies: 1012, isImage: false, isMe: false, postImage: ''),
  Threads(profileImg: 'images/figma_logo.jpg', name: 'figma', time: '3h', verified: true, contentText: '⭐multiplayer magic⭐\n\nWe are not just designers and devs--so many *other* things fuel our creativity + make this commnunity amazing \n\n so let\'s hear it: what makes *you* a multiplayer?\n (admin: we\'ll start! social-er powered by coffee + kpop', likes: 108, replies: 9, isImage: false, isMe: false, postImage: ''),
  Threads(profileImg: 'images/netflix_logo.png', name: 'netflix', time: '8h', verified: true, contentText: 'Feel like a good day to stream Dear John', likes: 1122, replies: 370, isImage: true, isMe: false, postImage: 'https://scontent.cdninstagram.com/v/t51.2885-15/358518432_649746657075997_5496647769895574847_n.jpg?stp=dst-jpg_e35_s720x720&_nc_ht=scontent.cdninstagram.com&_nc_cat=1&_nc_ohc=wvmi2Rb3BCIAX8ILAzc&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzE0MTcxODc1NTQ2NTAwNzUzMw%3D%3D.2-ccb7-5&oh=00_AfDwP78rpnOZPbv2XxoI7otJDD9muXmDHFIRKSYtsveVwQ&oe=64AD1B14&_nc_sid=10d13b'),
  Threads(profileImg: 'images/pic5.jpg', name: 'abhishvek', time: '1h', verified: false, contentText: 'HOW to build a flutter app👇🏻 \n1. Hand drawing of UI (outline of what you want to build)\n2. Maximum of 10 packages\n3. Setup CI/CD to github/bitbucket.\n4. Choose optimal backend (preferably custom backend)n5. Release app ASAP.', likes: 103, replies: 5, isImage: false, isMe: false,postImage: ''),
  Threads(profileImg: 'images/flutter_developers.jpg', name: 'flutter.developers', time: '5h', verified: false, contentText: '3 best UX aspects of threads, go', likes: 70, replies: 22, isImage: false, isMe: false, postImage: ''),
  Threads(profileImg: 'images/pic7.jpg', name: 'flutter_app_developers', time: '2h', verified: false, contentText: '9 Flutter Project Ideas', likes: 1, replies: 1, isImage: true, isMe: false, postImage: 'https://scontent.cdninstagram.com/v/t51.2885-15/358536464_1035642807810702_3170627518011737834_n.jpg?stp=dst-jpg_e35_s640x640_sh0.08&_nc_ht=scontent.cdninstagram.com&_nc_cat=106&_nc_ohc=8XAB7grUmi8AX-3vPS_&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzE0MjEzNjY2Mjk0Njg1NTUwNg%3D%3D.2-ccb7-5&oh=00_AfBZu4MgCoG7zffDvZppWUNrVVdlT-M2cP6G_qVQeDbczw&oe=64B01CBA&_nc_sid=10d13b'),
  Threads(profileImg: 'images/pic8.jpg', name: 'abdulgenrehman10', time: '1h', verified: false, contentText: 'Me waiting for my other followers to join.', likes: 58, replies: 7, isImage: false, isMe: false, postImage: ''),

];

