import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TurnByTurnWidget extends StatefulWidget {
  const TurnByTurnWidget({Key key}) : super(key: key);

  @override
  _TurnByTurnWidgetState createState() => _TurnByTurnWidgetState();
}

class _TurnByTurnWidgetState extends State<TurnByTurnWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
    );
  }
}
