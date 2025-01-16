class Sound{
  String title;  // Título de la canción
  String author; // Autor o cantante
  String cover;  // Ruta de la imagen de portada
  String time;   // Duración de la canción
  Sound({this.title="",this.author="",this.cover="",this.time=""});

}

List<Sound>sounds=[
  Sound(title:"Enero" ,author:"Shakira", cover: "lib/assets/images/shakira.png",time: "01:50" ),
  Sound(title:"7 Rings" ,author:"Ariana Grande", cover:"lib/assets/images/7rings.jpeg",time: "03:40"  ),
  Sound(title:"Back To Black" ,author:"Amy Winehouse", cover: "lib/assets/images/amy.jpg",time: "02:10"  ),
  Sound(title:"Scream" ,author:"Avenged sevenfold", cover:"lib/assets/images/avenged.jpg",time: "01:60"   ),
  Sound(title:"Havana" ,author:"Camila Cabello", cover:"lib/assets/images/havana.jpg",time: "03:00"   ),
];