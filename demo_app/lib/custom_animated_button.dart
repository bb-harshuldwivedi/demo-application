import 'package:flutter/material.dart';

class CustomAnimatedButton extends StatefulWidget {
  const CustomAnimatedButton(
      {super.key,
      required this.title,
      this.width,
      this.height,
      this.borderColor,
      this.surfaceColor});
  final String title;
  final double? width;
  final double? height;
  final Color? borderColor;
  final Color? surfaceColor;

  @override
  State<CustomAnimatedButton> createState() => _CustomAnimatedButtonState();
}

class _CustomAnimatedButtonState extends State<CustomAnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));
    _animation = Tween<double>(begin: 4, end: 0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              padding: EdgeInsets.only(
                  bottom: _animation.value, right: _animation.value),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                height: widget.height,
                width: widget.width,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: widget.borderColor ?? Colors.white),
                  color: widget.surfaceColor ?? Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  widget.title,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
    );
  }
}
