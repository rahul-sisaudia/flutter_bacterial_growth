import 'package:flutter/material.dart';

import '../../model/bacteria.dart';
import 'bacteria_collection_painter.dart';

class BacteriaCollectionCanvas extends StatelessWidget {
  const BacteriaCollectionCanvas({super.key, required this.bacteriaList});

  final List<Bacteria> bacteriaList;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BacteriaCollectionPainter(bacteriaList: bacteriaList),
    );
  }
}