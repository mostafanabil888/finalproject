class OnBoarding {
  final String title;
  final String image;

  OnBoarding({
    required this.title,
    required this.image,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Welcome to Eye Lab',
    image: 'assets/images/one.jpeg',
  ),
  OnBoarding(
    title: 'the shape of the eye, with cross  connections \n to the body\'s organs',
    image: 'assets/images/two.jpg',

  ),
  OnBoarding(
    title: 'What your eye\'s can tell you about your health',
    image: 'assets/images/three.jpeg',
  ),
  OnBoarding(
    title: 'Eye lab',
    image: 'assets/images/eye.jpg',
  ),
];
