import 'package:flutter/material.dart';

class CustomSideSheet {
  const CustomSideSheet._();

  static Future<void> show(BuildContext context, {required Widget child}) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Color(0xffFE4A0C).withValues(alpha: 0.3),
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        final width = MediaQuery.sizeOf(context).width - 69;
        return Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: width,
            height: double.infinity,
            child: _DraggableSideSheet(width: width, child: child),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        final slide = Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
            .animate(
              CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
            );
        return SlideTransition(position: slide, child: child);
      },
    );
  }
}

class _DraggableSideSheet extends StatefulWidget {
  const _DraggableSideSheet({required this.width, required this.child});

  final double width;
  final Widget child;

  @override
  State<_DraggableSideSheet> createState() => _DraggableSideSheetState();
}

class _DraggableSideSheetState extends State<_DraggableSideSheet> {
  static const _dismissThreshold = 0.35;

  var _dragProgress = 0.0;
  var _isDragging = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (_) => setState(() => _isDragging = true),
      onHorizontalDragUpdate: (details) {
        setState(() {
          _dragProgress = (_dragProgress + details.delta.dx / widget.width)
              .clamp(0.0, 1.0);
        });
      },
      onHorizontalDragEnd: (details) {
        final flingRight = (details.primaryVelocity ?? 0) > 700;
        if (flingRight || _dragProgress > _dismissThreshold) {
          Navigator.pop(context);
          return;
        }
        setState(() {
          _isDragging = false;
          _dragProgress = 0;
        });
      },
      child: AnimatedSlide(
        offset: Offset(_dragProgress, 0),
        duration: _isDragging
            ? Duration.zero
            : const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        child: Material(
          color: Colors.white,
          elevation: 10,
          shadowColor: Colors.black,
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(80),
            bottomLeft: Radius.circular(80),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
