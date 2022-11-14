import 'package:flutter/material.dart';

class PoetAvatar extends StatelessWidget {
  const PoetAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTspcQrr41pboUqo-Lblnx0z9VGwfeVrDg_Df-xelr766JN6LP2MzvtQojObWLKJ7NTGJM&usqp=CAU',
              ),
            ),
            CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.9QGa7AxdDbAeulydUAfTAQHaJP?pid=ImgDet&rs=1',
                ),
                radius: 35),
            CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/R.d68771f08d100200dab2f6c4a0241689?rik=Py%2bSt6TESOpPdA&pid=ImgRaw&r=0&sres=1&sresct=1',
                ),
                radius: 35),
            CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0kzlqFqOaJiVnNaGpjAcvuNywBOPV77nqVA&usqp=CAU',
                ),
                radius: 35),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text(
              "Dr Abbasin \n Yousafzai",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Rahman \nBaba",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Ghani\nKhan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Dr Israr\nA tal",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 30),
        const Divider(
          color: Colors.white,
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/R.01e9879c6e9b639e50424eed213471bc?rik=8leR1xEOeCV95w&riu=http%3a%2f%2f3.bp.blogspot.com%2f-Rg6zEbd43Tg%2fTc53pQhUIYI%2fAAAAAAAABxs%2fiBXcFUPH3uw%2fw1200-h630-p-k-no-nu%2fHamzababaa.jpg&ehk=KT15ko6zrlB5WeuOuQTGqNfquGjfrJlUtfM9Af52LPE%3d&risl=&pid=ImgRaw&r=0',
              ),
            ),
            CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/R.cdf2a1a39054d97f5c0579e8d6efa514?rik=nziMkwadtq%2bJKQ&pid=ImgRaw&r=0',
                ),
                radius: 35),
            CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://i.tribune.com.pk/media/images/1093721-KhushalKhanKhattakPAGEcopyx-1461888084/1093721-KhushalKhanKhattakPAGEcopyx-1461888084.jpg',
                ),
                radius: 35),
            CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/R.7c7b8e11b7fc28982b73bda95572f471?rik=7Q5mXkRjriSm4w&pid=ImgRaw&r=0',
                ),
                radius: 35),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text(
              "Hamza \n Baba",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Bakht Zada \n Danish",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Khushal Khan\n Khattak",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Munir \nBuneri",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
