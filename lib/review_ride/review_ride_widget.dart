import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewRideWidget extends StatefulWidget {
  const ReviewRideWidget({Key key}) : super(key: key);

  @override
  _ReviewRideWidgetState createState() => _ReviewRideWidgetState();
}

class _ReviewRideWidgetState extends State<ReviewRideWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
    );
  }
}
