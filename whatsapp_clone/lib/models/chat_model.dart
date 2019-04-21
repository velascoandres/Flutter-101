class ChatModel{
  final String name;
  String message;
  final String time;
  final String imageUrl;
  ChatModel({this.name,this.message,this.time,this.imageUrl});
}

List<ChatModel> messageData = [
  new ChatModel(
    name: "Juanito Pecados",
    message: "Traigo tu pizza",
    imageUrl: "https://scontent.fuio4-1.fna.fbcdn.net/v/t1.0-0/p370x247/23231413_289985888173847_5594107172285989442_n.jpg?_nc_cat=101&_nc_ht=scontent.fuio4-1.fna&oh=0681cd32f8925b62b8bbf9aafc2ae0af&oe=5D3AAABA",
    time: "20:06"
  ),
  new ChatModel(
    name: "Ivan",
    message: "Y Recuerda amigo",
    imageUrl: "https://pbs.twimg.com/profile_images/378800000506616465/47552d62b4085f7b6f699fed4f029d30_400x400.jpeg",
    time: "21:02"
  ),
  new ChatModel(
    name: "Harry",
    message: "El peluca Sape",
    imageUrl: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/691012cd-0ef8-48b7-bc08-23914e7ac443/d5wceia-28cafdf6-a6ea-41b6-a2b6-2a8db693b509.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzY5MTAxMmNkLTBlZjgtNDhiNy1iYzA4LTIzOTE0ZTdhYzQ0M1wvZDV3Y2VpYS0yOGNhZmRmNi1hNmVhLTQxYjYtYTJiNi0yYThkYjY5M2I1MDkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.q_98nK6Z2fYkGQW3STYaIsgvx_gcgBIdUnGaD5r5Gi0",
    time: "12:35"
  ),
  new ChatModel(
    name: "Spidey",
    message: "Help me Batman!!",
    imageUrl: "https://gcdn.emol.cl/comics/files/2015/11/meme-spider-man-p.jpg",
    time: "10:06"
  ),
  new ChatModel(
    name: "Juanito Pecados",
    message: "Traigo tu pizza",
    imageUrl: "https://scontent.fuio4-1.fna.fbcdn.net/v/t1.0-0/p370x247/23231413_289985888173847_5594107172285989442_n.jpg?_nc_cat=101&_nc_ht=scontent.fuio4-1.fna&oh=0681cd32f8925b62b8bbf9aafc2ae0af&oe=5D3AAABA",
    time: "20:06"
  ),
  new ChatModel(
    name: "Ivan",
    message: "Y Recuerda amigo",
    imageUrl: "https://scontent.fuio4-1.fna.fbcdn.net/v/t1.0-0/p370x247/23231413_289985888173847_5594107172285989442_n.jpg?_nc_cat=101&_nc_ht=scontent.fuio4-1.fna&oh=0681cd32f8925b62b8bbf9aafc2ae0af&oe=5D3AAABA",
    time: "21:02"
  ),
  new ChatModel(
    name: "Harry",
    message: "El peluca Sape",
    imageUrl: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/691012cd-0ef8-48b7-bc08-23914e7ac443/d5wceia-28cafdf6-a6ea-41b6-a2b6-2a8db693b509.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzY5MTAxMmNkLTBlZjgtNDhiNy1iYzA4LTIzOTE0ZTdhYzQ0M1wvZDV3Y2VpYS0yOGNhZmRmNi1hNmVhLTQxYjYtYTJiNi0yYThkYjY5M2I1MDkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.q_98nK6Z2fYkGQW3STYaIsgvx_gcgBIdUnGaD5r5Gi0",
    time: "12:35"
  ),
  new ChatModel(
    name: "Spidey",
    message: "Help me Batman!!",
    imageUrl: "https://gcdn.emol.cl/comics/files/2015/11/meme-spider-man-p.jpg",
    time: "10:06"
  ),
  new ChatModel(
    name: "Juanito Pecados",
    message: "Traigo tu pizza",
    imageUrl: "https://scontent.fuio4-1.fna.fbcdn.net/v/t1.0-0/p370x247/23231413_289985888173847_5594107172285989442_n.jpg?_nc_cat=101&_nc_ht=scontent.fuio4-1.fna&oh=0681cd32f8925b62b8bbf9aafc2ae0af&oe=5D3AAABA",
    time: "20:06"
  ),
  new ChatModel(
    name: "Ivan",
    message: "Y Recuerda amigo",
    imageUrl: "https://pbs.twimg.com/profile_images/378800000506616465/47552d62b4085f7b6f699fed4f029d30_400x400.jpeg",
    time: "21:02"
  ),
  new ChatModel(
    name: "Harry",
    message: "El peluca Sape",
    imageUrl: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/691012cd-0ef8-48b7-bc08-23914e7ac443/d5wceia-28cafdf6-a6ea-41b6-a2b6-2a8db693b509.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzY5MTAxMmNkLTBlZjgtNDhiNy1iYzA4LTIzOTE0ZTdhYzQ0M1wvZDV3Y2VpYS0yOGNhZmRmNi1hNmVhLTQxYjYtYTJiNi0yYThkYjY5M2I1MDkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.q_98nK6Z2fYkGQW3STYaIsgvx_gcgBIdUnGaD5r5Gi0",
    time: "12:35"
  ),
  new ChatModel(
    name: "Spidey",
    message: "Help me Batman!!",
    imageUrl: "https://gcdn.emol.cl/comics/files/2015/11/meme-spider-man-p.jpg",
    time: "10:06"
  ),
  new ChatModel(
    name: "Juanito Pecados",
    message: "Traigo tu pizza",
    imageUrl: "https://scontent.fuio4-1.fna.fbcdn.net/v/t1.0-0/p370x247/23231413_289985888173847_5594107172285989442_n.jpg?_nc_cat=101&_nc_ht=scontent.fuio4-1.fna&oh=0681cd32f8925b62b8bbf9aafc2ae0af&oe=5D3AAABA",
    time: "20:06"
  ),
  new ChatModel(
    name: "Ivan",
    message: "Y Recuerda amigo",
    imageUrl: "https://scontent.fuio4-1.fna.fbcdn.net/v/t1.0-0/p370x247/23231413_289985888173847_5594107172285989442_n.jpg?_nc_cat=101&_nc_ht=scontent.fuio4-1.fna&oh=0681cd32f8925b62b8bbf9aafc2ae0af&oe=5D3AAABA",
    time: "21:02"
  ),
  new ChatModel(
    name: "Harry",
    message: "El peluca Sape",
    imageUrl: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/691012cd-0ef8-48b7-bc08-23914e7ac443/d5wceia-28cafdf6-a6ea-41b6-a2b6-2a8db693b509.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzY5MTAxMmNkLTBlZjgtNDhiNy1iYzA4LTIzOTE0ZTdhYzQ0M1wvZDV3Y2VpYS0yOGNhZmRmNi1hNmVhLTQxYjYtYTJiNi0yYThkYjY5M2I1MDkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.q_98nK6Z2fYkGQW3STYaIsgvx_gcgBIdUnGaD5r5Gi0",
    time: "12:35"
  ),
  new ChatModel(
    name: "Spidey",
    message: "Help me Batman!!",
    imageUrl: "https://gcdn.emol.cl/comics/files/2015/11/meme-spider-man-p.jpg",
    time: "10:06"
  ),
  
];