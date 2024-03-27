class UnbordingContent {
  String title;
  String date;
  String price;
  String check;

  UnbordingContent(
      {required this.title,
      required this.price,
      required this.date,
      required this.check});
}

List<UnbordingContent> components = [
  UnbordingContent(
      title: "مخالفة من الدرجة 1",
      check: 'assets/images/checkright.svg',
      date: "25/05/2018 ",
      price: "2000 DA"),
  UnbordingContent(
      title: "مخالفة من الدرجة 2",
      check: 'assets/images/checkright.svg',
      date: "22/03/2019 ",
      price: "2500 DA"),
  UnbordingContent(
      title: "مخالفة من الدرجة 3",
      check: 'assets/images/checkright.svg',
      date: "17/06/2020 ",
      price: "3000 DA"),
  UnbordingContent(
      title: "مخالفة من الدرجة 4",
      check: 'assets/images/wrong.svg',
      date: "31/12/2023 ",
      price: "5000 DA"),
  UnbordingContent(
      title: "مخالفة من الدرجة 2",
      check: 'assets/images/wrong.svg',
      date: "19/02/2019 ",
      price: "2000 DA"),
];
