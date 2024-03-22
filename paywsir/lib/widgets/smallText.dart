import 'package:flutter/cupertino.dart';

// SmallText is a custom widget for displaying small text with customization options.
class SmallText extends StatelessWidget {
  // Color of the text. Default is a light gray color.
  Color? color;

  // The actual text content to be displayed.
  final String text;

  // Font size of the text. Default is 12.
  double size;
  FontWeight? weight;
  // Line height of the text. Default is 1.2.
  double height;

  // Constructor for SmallText widget.
  SmallText({
    Key? key, // Key for widget identification and comparison.
    this.color = const Color(0xFF000000), // Default color is light gray.
    required this.text, // Text content is required.
    this.weight = FontWeight.w400,
    this.height = 1.2, // Default line height is 1.2.
    this.size = 12, // Default font size is 12.
  }) : super(key: key); // Call the super constructor with the key.

  @override
  Widget build(BuildContext context) {
    // Build method returns a Text widget with the specified style.
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: weight,
        fontSize: size,
        height: height,
        fontFamily: 'Urbanist',
      ),
    );
  }
}
