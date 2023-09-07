import '/components/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AttendanceTrackerModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  DateTime? timeIn;

  DateTime? timeOut;

  DateTime? dateSelected;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    sideBarModel = createModel(context, () => SideBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sideBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
