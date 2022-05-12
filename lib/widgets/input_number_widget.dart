import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputNumberWidget extends StatelessWidget {
  final void Function(String) onChange;
  final RxBool isValid;
  const InputNumberWidget(
      {Key? key, required this.onChange, required this.isValid})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 20;
    FocusNode focusNode = FocusNode();

    InputBorder _formFieldStyle() {
      return OutlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).secondaryHeaderColor,
          width: 1.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      );
    }

    InputBorder _formFieldErrorStyle() {
      return const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1.5),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      );
    }

    return Material(
      color: Theme.of(context).primaryColor,
      elevation: 0,
      borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
      child: Obx(
        () => TextFormField(
          focusNode: focusNode,
          onChanged: onChange,
          autocorrect: false,
          validator: (value) {
            if (value != null &&
                int.tryParse(
                  value,
                ) is int) {
              return null;
            }
            return 'Please enter a valid number';
          },
          keyboardType: TextInputType.number,
          autofocus: false,
          style: Theme.of(context).textTheme.headline2,
          decoration: InputDecoration(
              isDense: true,
              hintText: " Type a number",
              hintStyle: Theme.of(context).textTheme.headline2,
              focusedBorder: _formFieldStyle(),
              contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              enabledBorder: !isValid.value
                  ? _formFieldErrorStyle()
                  : OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).secondaryHeaderColor,
                        width: 1.0,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(borderRadius),
                      ),
                    ),
              errorBorder: _formFieldErrorStyle(),
              focusedErrorBorder: _formFieldErrorStyle()),
        ),
      ),
    );
  }
}
