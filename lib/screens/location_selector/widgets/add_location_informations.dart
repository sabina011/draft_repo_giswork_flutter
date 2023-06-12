import 'package:flutter/material.dart';

import '../../../widgets/widget.dart';
import '../../../widgets/widget_form_field.dart';
import '../../../widgets/widget_gis_button.dart';
import '../../customize/customize_constants.dart';
import '../../customize/widgets/customize_image_videos_widgets.dart';

class AddLocationInformation extends StatefulWidget {
  AddLocationInformation({Key? key}) : super(key: key);

  @override
  State<AddLocationInformation> createState() =>
      _AddLocationInformationState();
}

class _AddLocationInformationState extends State<AddLocationInformation> {
  final _latLongController = new TextEditingController();
  final _inputPlaceController = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _latLongController.dispose();
    _inputPlaceController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          child: Container(
            padding: EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  Center(
                    child: GISDynamicText(
                      text: 'Location Details',
                      isHeadings: true,
                    ),
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight * 2,
                  ),
                  GISDynamicText(
                    text: 'Place Information',
                    isHeadings: true,
                  ),
                  GisFormField(
                      controller: _inputPlaceController, initialValue: ""),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  ImageVideoView(),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight * 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: GISButtonSaveOrUpload(
                      btn_text: 'Save',
                      context: context,
                    ),
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight * 2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
