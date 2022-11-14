import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:mahzalaaa/utils/poetry%20card/poetry_card.dart';

class TappyCard extends StatelessWidget {
  const TappyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        PoetryCard(
            text:
                '''د نيمې شپې په کلي راغلم\nپيغلې اوده دي د لونګو بوی راځینه '''),
        PoetryCard(
          text: 'که لالى سل ودونه وکړى\n د کوټى مينځ کې ستنه زه ولاړه يمه',
        ),
        PoetryCard(
          text: 'لالیه غرق شې ډمه نه یم\nد‌ زړه له درده ستا واده کې ګډیدمه',
        ),
        PoetryCard(
            text: 'بیګاه مې خوب لیدو جانانه\n ستا په دیدن پسې کابل ته تلی ومه'),
        PoetryCard(
            text: 'راشه زما په خوا کې کینه\nکه تماکو غواړی لونګ به درکومه'),
        PoetryCard(
            text:
                'Zama Di Sa Okral che laary /nPrady Sarry vy Zaan Di orak da Malka ko naaa'),
                
      ],
      options: CarouselOptions(
        autoPlay: true,
        enableInfiniteScroll: true,
        autoPlayInterval: const Duration(seconds: 7),
        viewportFraction: 1,
      ),
    );
  }
}
