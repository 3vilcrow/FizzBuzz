import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputNumberWidget extends StatelessWidget {
  const InputNumberWidget({Key? key}) : super(key: key);

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

    return Material(
      color: Theme.of(context).primaryColor,
      elevation: 0,
      borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
      child: TextFormField(
        focusNode: focusNode,
        onChanged: (s) {},
        autocorrect: false,
        validator: (value) => null,
        keyboardType: TextInputType.number,
        autofocus: false,
        style: Theme.of(context).textTheme.headline2,
        decoration: InputDecoration(
          isDense: true,
          hintText: " type a number",
          hintStyle: Theme.of(context).textTheme.headline2,
          focusedBorder: _formFieldStyle(),
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          enabledBorder: false
              ? OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.error, width: 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(borderRadius),
                  ),
                )
              : OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).secondaryHeaderColor,
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(borderRadius),
                  ),
                ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.5),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          focusedErrorBorder: _formFieldStyle(),
        ),
      ),
    );
  }
}
