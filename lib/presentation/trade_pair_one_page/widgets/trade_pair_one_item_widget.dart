import 'package:flutter/material.dart';
import 'package:lenoli_s_application1/core/app_export.dart';
import 'package:lenoli_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TradePairOneItemWidget extends StatelessWidget {
  TradePairOneItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 12,
      ),
      decoration: AppDecoration.fillWhiteA7007a.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 56,
            width: 56,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame10692503,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 6,
              bottom: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "PancakeSwap",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtJostMedium16,
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "AMM DEX",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtJostRegular16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
