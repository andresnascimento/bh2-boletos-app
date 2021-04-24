class OnbordingContent {
  String image;
  String title;
  String description;

  OnbordingContent({this.image, this.title, this.description});
}

List<OnbordingContent> contents = [
  OnbordingContent(
      title: 'Quality Food',
      image: 'assets/images/intro-1.svg',
      description:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it "),
  OnbordingContent(
      title: 'Fast Delevery',
      image: 'assets/images/intro-2.svg',
      description:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it "),
  OnbordingContent(
      title: 'Reward surprises',
      image: 'assets/images/intro-3.svg',
      description:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it "),
];
