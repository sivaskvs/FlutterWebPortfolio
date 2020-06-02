import 'package:sivasubramanian/models/project_model.dart';
import 'assets.dart';

final List<Project> projects = [
   Project(
      name: 'Lyrics Generator with NLP using TensorFlow',
      image: Assets.tf,
      description:
      'Web scrapping and NLP project for generating lyrics from web scrapped lyrics Dataset.',
      link: 'https://github.com/sivaskvs/Tamil-lyrics-generator-NLP'),
  Project(
      name: 'Flutter web portfolio',
      image: Assets.flutter,
      description:
      'Responsive web portfolio made with Flutter and Firebase',
      link:
      'https://github.com/sivaskvs/FlutterWebPortfolio'),
  Project(
      name: 'Radio Window in Python ',
      image: Assets.radio,
      description:
      'Radio GUI for listening to Tamil language stations made with Python',
      link: 'https://github.com/sivaskvs/Tamil-Radio-Window---Python'),
  Project(
      name: 'Kuruksastra 17',
      image: Assets.ks,
      description:
      'Official android native application for National level university cultural fest Kuruksastra for the year 2017',
      link: 'https://m.apkpure.com/kuruksastra17/edu.sastra.ks.kuruksastra17')
];