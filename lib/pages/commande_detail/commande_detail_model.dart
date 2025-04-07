import '/components/sidebar3/sidebar3_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'commande_detail_widget.dart' show CommandeDetailWidget;
import 'package:flutter/material.dart';

class CommandeDetailModel extends FlutterFlowModel<CommandeDetailWidget> {
  ///  Local state fields for this page.

  List<LatLng> markerList = [];
  void addToMarkerList(LatLng item) => markerList.add(item);
  void removeFromMarkerList(LatLng item) => markerList.remove(item);
  void removeAtIndexFromMarkerList(int index) => markerList.removeAt(index);
  void insertAtIndexInMarkerList(int index, LatLng item) =>
      markerList.insert(index, item);
  void updateMarkerListAtIndex(int index, Function(LatLng) updateFn) =>
      markerList[index] = updateFn(markerList[index]);

  ///  State fields for stateful widgets in this page.

  // Model for sidebar3 component.
  late Sidebar3Model sidebar3Model;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {
    sidebar3Model = createModel(context, () => Sidebar3Model());
  }

  @override
  void dispose() {
    sidebar3Model.dispose();
  }
}
