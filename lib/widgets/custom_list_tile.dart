import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({
    Key? key,
    required this.leading,
    required this.title,
    required this.subTitle,
    required this.trailing,
    required this.onActionPressed,
    this.marginButtom=0,
  }) : super(key: key);
  final IconData leading;
  final String title;
  final String subTitle;
  final IconData trailing;
  final double marginButtom;
  final void Function() onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: marginButtom),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(leading),
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: IconButton(
          onPressed: onActionPressed,
          icon: Icon(trailing),
        ),
        // contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
