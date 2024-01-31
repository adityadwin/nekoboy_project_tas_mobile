class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
    description: 'Pick your manga from our list\n   More than 20 anime series',
    image: "images/screen1.png",
    title: 'Select from our list\n         Best Manga',
  ),
  UnboardingContent(
    description: 'You can access in Mobile or\n                   Tablet',
    image: "images/screen2.png",
    title: "Easy access from anywhere",
  ),
  UnboardingContent(
      description:
          "Delivery your manga at your\n                           Home",
      image: "images/screen3.png",
      title: "Quick Delivery at Your Home")
];
