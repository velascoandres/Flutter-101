class Contact{
  final String name;
  final String imageUrl;
  String message;

  Contact({this.name,this.imageUrl,this.message});
}

List<Contact> contacts = [
  new Contact(
    name: "Juanito Pecados",
    message: "Traigo tu pizza",
    imageUrl: "https://scontent.fuio4-1.fna.fbcdn.net/v/t1.0-0/p370x247/23231413_289985888173847_5594107172285989442_n.jpg?_nc_cat=101&_nc_ht=scontent.fuio4-1.fna&oh=0681cd32f8925b62b8bbf9aafc2ae0af&oe=5D3AAABA",
  ),
  new Contact(
    name: "Ivan",
    message: "Y Recuerda amigo",
    imageUrl: "https://pbs.twimg.com/profile_images/378800000506616465/47552d62b4085f7b6f699fed4f029d30_400x400.jpeg",
  ),
  new Contact(
    name: "Harry",
    message: "El peluca Sape",
    imageUrl: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/691012cd-0ef8-48b7-bc08-23914e7ac443/d5wceia-28cafdf6-a6ea-41b6-a2b6-2a8db693b509.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzY5MTAxMmNkLTBlZjgtNDhiNy1iYzA4LTIzOTE0ZTdhYzQ0M1wvZDV3Y2VpYS0yOGNhZmRmNi1hNmVhLTQxYjYtYTJiNi0yYThkYjY5M2I1MDkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.q_98nK6Z2fYkGQW3STYaIsgvx_gcgBIdUnGaD5r5Gi0",
  ),
  
];