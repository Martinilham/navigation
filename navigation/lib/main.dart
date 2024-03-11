import "package:flutter/material.dart";

void main(){
  runApp( MaterialApp(
    title: "Navigation",
    home: const HalamanSatu(),
    routes:<String,WidgetBuilder>{
      '/HalamanSatu': (context) => const HalamanSatu(),
      '/HalamanDua': (context) => const HalamanDua(),
    },
  ));
}

class HalamanSatu extends StatelessWidget{
  const HalamanSatu({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text(" ini Home "),
      backgroundColor: Colors.cyan[300],
    ),
    body: Container(
      alignment: Alignment.topCenter,
      child: Row(
        children: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/HalamanDua");
            },
            icon: const Icon(Icons.mobile_friendly)),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/HalamanDua");
            },
            icon: const Icon(Icons.music_note))
        ],
      ),
    ),
   );
  }

}

class HalamanDua extends StatelessWidget{
  const HalamanDua({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text(" ini Halaman Dua "),
      backgroundColor: Colors.cyan[300],
    ),
    body: Container(
      alignment: Alignment.topCenter,
      child: Row(
        children: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/HalamanSatu");
            },
            icon: const Icon(Icons.home)),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/HalamanSatu");
            },
            icon: const Icon(Icons.handshake))
        ],
      ),
    ),
   );
  }

}