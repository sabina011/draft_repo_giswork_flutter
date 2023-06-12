import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/application/custom_package/bloc/custom_bloc.dart';


class CustomizeUploadHolder extends StatefulWidget {
  final CustomPostBloc customPostBloc;
  final Map<String, dynamic> customPostInputs;

  const CustomizeUploadHolder({
    Key? key,
    required this.customPostBloc,
    required this.customPostInputs,
  }) : super(key: key);

  @override
  State<CustomizeUploadHolder> createState() => _CustomizeUploadHolderState();
}

class _CustomizeUploadHolderState extends State<CustomizeUploadHolder> {
  @override
  void initState() {
    super.initState();
    widget.customPostBloc.add(
      CustomPostEvent.submit(
        customizeDataInputs: widget.customPostInputs,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => widget.customPostBloc,
          child: BlocBuilder<CustomPostBloc, CustomPostState>(
            builder: (context, state) {
              return state.maybeWhen(
                initial: () => SizedBox(),
                loading: () => Center(child: CircularProgressIndicator()),
                error: (err) => Center(child: Text(err.toString())),
                success: (success) {
                  return Center(
                    child: Text(
                      success,
                    ),
                  );
                },
                orElse: () => SizedBox(),
              );
            },
          ),
        ),
      ),
    );
  }
}


