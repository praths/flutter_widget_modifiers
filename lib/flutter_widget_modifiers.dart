library flutter_widget_modifiers;

import 'package:flutter/material.dart';

extension PaddingModifiers on Widget {
  Widget paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }

  Widget paddingSymmetric({
    double horizontal = 0.0,
    double vertical = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
      child: this,
    );
  }

  Widget paddingAll({
    double value = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }
}

extension AlignmentModifiers on Widget {
  Widget alignCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }

  Widget alignCenterLeft() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }

  Widget alignCenterRight() {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }

  Widget alignTopCenter() {
    return Align(
      alignment: Alignment.topCenter,
      child: this,
    );
  }

  Widget alignTopLeft() {
    return Align(
      alignment: Alignment.topLeft,
      child: this,
    );
  }

  Widget alignTopRight() {
    return Align(
      alignment: Alignment.topRight,
      child: this,
    );
  }

  Widget alignBottomCenter() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }

  Widget alignBottomLeft() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: this,
    );
  }

  Widget alignBottomRight() {
    return Align(
      alignment: Alignment.bottomRight,
      child: this,
    );
  }

  Widget center() {
    return Center(
      child: this,
    );
  }
}


Widget width({
  double value = 0.0,
}) {
  return SizedBox(
    width: value,
  );
}

Widget height({
  double value = 0.0,
}) {
  return SizedBox(
    height: value,
  );
}


extension PositionModifiers on Widget {
  Widget position({
    double width = 0.0,
    double height = 0.0,
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Positioned(
      width: width,
      height: height,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: this,
    );
  }
}

extension FlexModifiers on Widget {
  Widget asExpanded({
    int flex = 1,
  }) {
    return Expanded(
      flex: flex,
      child: this,
    );
  }

  Widget asFlexible({
    int flex = 1,
    FlexFit fit = FlexFit.tight,
  }) {
    return Flexible(
      flex: flex,
      fit: fit,
      child: this,
    );
  }
}

extension ChildrenModifiers on List<Widget> {
  Widget embedInColumn() {
    return Column(
      children: this,
    );
  }

  Widget embedInRow() {
    return Row(
      children: this,
    );
  }
}
