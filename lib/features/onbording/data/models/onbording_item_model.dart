import 'package:i_learn/core/utils/constants.dart';

class OnbordingItemModel {
  final String imageUrl;
  final String title;
  final String subTitle;

  OnbordingItemModel({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });
}

List<OnbordingItemModel> OnbordingItemsList = [
  OnbordingItemModel(
    imageUrl: AssetsManger.OnbordingImage1,
    title: 'Learn with us now ',
    subTitle:
        'You can teach anthing you want to teach \nthrough this application',
  ),
  OnbordingItemModel(
    imageUrl: AssetsManger.OnbordingImage2,
    title: 'Learn with us now ',
    subTitle:
        'You can teach anthing you want to teach \nthrough this application',
  ),
  OnbordingItemModel(
    imageUrl: AssetsManger.OnbordingImage3,
    title: 'Learn with us now ',
    subTitle:
        'You can teach anthing you want to teach \nthrough this application',
  ),
];
