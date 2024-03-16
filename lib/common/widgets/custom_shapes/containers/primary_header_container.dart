import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,

        /// -- if size.infinite is not true error occurred
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            /// -- Background Custom Shapes
            // Positioned(
            //     top: -150,
            //     right: -250,
            //     child: TCircularContainer(
            //       backgroundColor: TColors.white.withOpacity(0.1),
            //     )),
            // Positioned(
            //   top: 100,
            //   right: -300,
            //   child: TCircularContainer(
            //     backgroundColor: TColors.white.withOpacity(0.1),
            //   ),
            // ),
            child,
          ],
        ),
      ),
    );
  }
}