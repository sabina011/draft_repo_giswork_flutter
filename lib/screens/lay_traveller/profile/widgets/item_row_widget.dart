import 'package:flutter/material.dart';

class ItemRowWidget extends StatelessWidget {
  final bool isCurrentPackage;
  final TextEditingController? packageNameController;
  final VoidCallback? onEditPackageCallBack;
  final String? localStoredItemPackageName;
  final int maxNumberOfDays;

  const ItemRowWidget({
    Key? key,
    required this.isCurrentPackage,
    this.packageNameController,
    this.onEditPackageCallBack,
    this.localStoredItemPackageName,
    required this.maxNumberOfDays,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isCurrentPackage
            ? Container(
                width: size.width * 0.56,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Package name',
                    suffixIcon: IconButton(
                      onPressed: () => packageNameController!.clear(),
                      icon: Icon(Icons.close),
                    ),
                  ),
                  controller: packageNameController!,
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: onEditPackageCallBack,
                    icon: Icon(
                      Icons.edit,
                      size: 20.0,
                    ),
                  ),
                  Text(
                    localStoredItemPackageName!,
                    style: itineraryTextStyle(),
                  ),
                ],
              ),
        Text(
          'Days: $maxNumberOfDays',
        ),
      ],
    );
  }

  TextStyle itineraryTextStyle() {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
  }
}
