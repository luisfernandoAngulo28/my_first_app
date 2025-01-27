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
  Sound(title:"Gasolina" ,author:"Daddy Yankee", cover:"lib/assets/images/Daddy_Yankee.jpg",time: "03:20"   ),
  Sound(title:"Dark Horse" ,author:"Katy Perry", cover:"lib/assets/images/katyPerry.jpg",time: "03:20"   ),
  Sound(title:"No me Conoce" ,author:"J Balvin", cover:"lib/assets/images/jbalvin.png",time: "03:20"   ),
  Sound(title:"Llamé Pa' Verte" ,author:"Wisin & Yandel", cover:"lib/assets/images/wisinyyandel.jpg",time: "03:20"   ),
  Sound(title:"Contéstame El Teléfono" ,author:"Alexis y Fido", cover:"lib/assets/images/alexis_y_fido.jpg",time: "03:20"   ),
];