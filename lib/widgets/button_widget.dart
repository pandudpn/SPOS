import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback? onPressed;

  const RoundedButtonWidget({
    required this.buttonColor,
    required this.buttonText,
    required this.textColor,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        shape: MaterialStateProperty.all(const StadiumBorder()),
        animationDuration: const Duration(milliseconds: 700),
      ),
      child: Text(
        buttonText,
        style:
            Theme.of(context).textTheme.subtitle1!.copyWith(color: textColor),
      ),
    );
  }
}

class OutlinedButtonWidget extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback? onPressed;

  const OutlinedButtonWidget({
    required this.buttonColor,
    required this.buttonText,
    required this.textColor,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(
            color: buttonColor,
          ),
        ),
        shape: MaterialStateProperty.all(const StadiumBorder()),
        animationDuration: const Duration(milliseconds: 700),
      ),
      child: Text(
        buttonText,
        style:
            Theme.of(context).textTheme.bodyText1!.copyWith(color: textColor),
      ),
    );
  }
}
