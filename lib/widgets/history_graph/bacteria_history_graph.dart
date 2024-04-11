import 'package:flutter/material.dart';

import 'bacteria_growth_history_element.dart';
import 'history_graph_canva.dart';

class BacteriaHistoryGraph extends StatelessWidget {
  const BacteriaHistoryGraph({
    super.key,
    required this.historyElements,
    required this.currentTick,
    required this.currentBacteriaAmount,
  });

  static const double opacity = 0.5;
  static const double padding = 32;

  final List<BacteriaGrowthHistoryElement> historyElements;
  final int currentTick;
  final int currentBacteriaAmount;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Opacity(
          opacity: opacity,
          child: Container(
            padding: const EdgeInsets.all(
              padding,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 12,
                )
              ],
            ),
            child: _buildMainPart(constraints),
          ),
        );
      },
    );
  }

  Widget _buildMainPart(BoxConstraints constraints) {
    if (historyElements.isEmpty) return Container();

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        HistoryGraphCanvas(
          historyElements: historyElements,
          currentTick: currentTick,
          currentBacteriaAmount: currentBacteriaAmount,
        ),
        _buildInfoText(),
      ],
    );
  }

  Positioned _buildInfoText() {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.white70,
        child: Column(
          children: [
            Text(
              '${historyElements.last.amountOfBacteria} Bacteria',
            ),
          ],
        ),
      ),
    );
  }
}
