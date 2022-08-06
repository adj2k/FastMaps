import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrepareRideWidget extends StatefulWidget {
  const PrepareRideWidget({Key key}) : super(key: key);

  @override
  _PrepareRideWidgetState createState() => _PrepareRideWidgetState();
}

class _PrepareRideWidgetState extends State<PrepareRideWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
    );
  }
}
