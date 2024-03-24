class UnbordingContent {
  String image;
  String discription2;
  String discription;

  UnbordingContent({required this.image, required this.discription, required this.discription2});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      discription2: "!الإنترنت",
      image: 'assets/images/creditcard.gif',
      discription: "الآن من السهل دفع الغرامات عبر "
  ),
  UnbordingContent(
      discription2: " ",
      image: 'assets/images/topup.gif',
      discription: "!الدفع بطريقة آمنة و موثوقة"
  ),
  UnbordingContent(
      discription2: "!أيام الأسبوع",
      image: 'assets/images/support.gif',
      discription: " خدمة على مدار الساعة طوال "
  ),
];