import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBioCard extends StatelessWidget {
   CustomBioCard({
    Key? key,
    required IconData leadingIcon,
    required String title,
    required String subTitle,
    required IconData trailingIcon,
    double marginButtom = 0,
  })  : _leadingIcon = leadingIcon,
        _title = title,
        _subTitle = subTitle,
        _trailingIcon = trailingIcon,
        _marginButtom = marginButtom,
        super(key: key);
  final IconData _leadingIcon;
  final String _title;
  final String _subTitle;
  final IconData _trailingIcon;
  double _marginButtom ;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      margin:  EdgeInsets.only(right: 20, left: 20, bottom: _marginButtom),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(_leadingIcon),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _title,
                  style: GoogleFonts.nunito(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  _subTitle,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w300, fontSize: 13),
                ),
              ],
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: Icon(_trailingIcon))
          ],
        ),
      ),
    );
  }
}
