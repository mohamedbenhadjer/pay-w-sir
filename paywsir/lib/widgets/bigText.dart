import 'package:flutter/cupertino.dart';

// BigText is a custom widget for displaying large text with customization options.
class BigText extends StatelessWidget {
  // Color of the text. Default is a dark brown color.
  Color? color;

  // The actual text content to be displayed.

  final String text;

  // Font size of the text. Default is 20.
  double size;

  // Text overflow behavior. Default is ellipsis.
  TextOverflow overflow;

  // Constructor for BigText widget.
  BigText({
    Key? key, // Key for widget identification and comparison.
    this.color = const Color(0xFF000000), // Default color is dark brown.

    required this.text, // Text content is required.
    this.overflow =
        TextOverflow.ellipsis, // Default overflow behavior is ellipsis.
    this.size = 20, // Default font size is 20.
  }) : super(key: key); // Call the super constructor with the key.

  @override
  Widget build(BuildContext context) {
    // Build method returns a Text widget with the specified style.
    return Text(
      text,
      maxLines: 1, // Display only one line of text.
      overflow: overflow, // Apply specified overflow behavior.
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size,
        fontFamily: 'Urbanist',
      ),
    );
  }
}
