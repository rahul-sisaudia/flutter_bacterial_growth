
import 'package:flutter/material.dart';

import '../../model/bacteria.dart';

class BacteriaCollectionWidgetTree extends StatelessWidget {
  const BacteriaCollectionWidgetTree({super.key, required this.bacteriaList});

  final List<Bacteria> bacteriaList;

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetList = bacteriaList
        .map(
          (Bacteria bacteria) => _buildWidgetFromBacteria(bacteria),
    )
        .toList();

    return Stack(children: widgetList);
  }

  Positioned _buildWidgetFromBacteria(Bacteria bacteria) {
    return Positioned(
      left: bacteria.x,
      top: bacteria.y,
      child: Transform.rotate(
        angle: bacteria.rotation,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.black38,
          ),
          width: bacteria.width,
          height: bacteria.height,
        ),
      ),
    );
  }
}