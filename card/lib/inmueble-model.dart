class Publicacion{
  final String nombre;
  final double precio;
  String portadaUrl;

  Publicacion({this.nombre,this.precio,this.portadaUrl});

}

List<Publicacion> publicaciones = [
  new Publicacion(
    nombre: "Casa hermosa",
    precio: 200000,
    portadaUrl: "https://st3.idealista.com/news/archivos/styles/news_detail/public/2018-11/casa_prefabricada.jpg?sv=pX_Hqy9d&itok=kCOtbqgQ",
  ),
  new Publicacion(
    nombre: "Propiedad de lujo",
    precio: 544000,
    portadaUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKKZlMdVxxI4bpV8FvszpFNqchi_DNIxmHJ7tqHfsEWDhMBkTK",
  ),
  new Publicacion(
    nombre: "Condomio",
    precio: 120000,
    portadaUrl: "https://vida-spyqpdxrgyld6rrkjib.netdna-ssl.com/wp-content/uploads/2018/10/Casas-en-Atia-Residencial-Queretaro-436x300.jpg",
  ),
];