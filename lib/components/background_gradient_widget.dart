import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundGradientWidget extends StatefulWidget {
  const BackgroundGradientWidget({Key key}) : super(key: key);

  @override
  _BackgroundGradientWidgetState createState() =>
      _BackgroundGradientWidgetState();
}

class _BackgroundGradientWidgetState extends State<BackgroundGradientWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      constraints: BoxConstraints(
        maxWidth: double.infinity,
        maxHeight: double.infinity,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF436F4), Color(0xFF132EF5)],
          stops: [0, 1],
          begin: AlignmentDirectional(1, -1),
          end: AlignmentDirectional(-1, 1),
        ),
      ),
    );
  }
}
