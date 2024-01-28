import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subTitle;
  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      image: Assets.assetsImagesOnBoeading01,
      title: 'Explore The history with Dalel in a smart way',
      subTitle:
          'Using our app’s history libraries you can find many historical periods'),
  OnBoardingModel(
      image: Assets.assetsImagesOnBoeading02,
      title: 'From every place on earth',
      subTitle: 'A big variety of ancient places from all over the world'),
  OnBoardingModel(
      image: Assets.assetsImagesOnBoeading03,
      title: 'Using modern AI technology for better user experience',
      subTitle:
          'AI provide recommendations and helps you to continue the search journey'),
];
