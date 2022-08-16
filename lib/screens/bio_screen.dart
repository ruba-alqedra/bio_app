import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_bio_card.dart';
import '../widgets/custom_list_tile.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BIO',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFC9BBCF), Color(0xFFB7D3DF)],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  'https://www.saltadorarchitects.com/images/team/01.jpg'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('elancer - Flutter',
                style: GoogleFonts.cairo(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              'UCAS - TI',
              style: GoogleFonts.cairo(
                  height: 0.8, fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const Divider(
              thickness: 1,
              color: Color(0xFF898AA6),
              indent: 40,
              endIndent: 40,
              height: 50,
            ),
            CustomBioCard(
              leadingIcon: Icons.phone_android_outlined,
              title: 'Mobile',
              subTitle: '+972-59-529-2806',
              trailingIcon: Icons.phone,
              marginButtom: 10,
            ),
            CustomListTile(
              leading: Icons.email_outlined,
              title: 'Email',
              subTitle: 'rqedra@gmail.com',
              trailing: Icons.send_outlined,
              onActionPressed: () {
                print('send email');
                _showMessage(context, massege: 'send email');
              },
              marginButtom: 10,
            ),
            CustomListTile(
              leading: Icons.location_on_outlined,
              title: 'Location',
              subTitle: 'Gaza Strip',
              trailing: Icons.map_outlined,
              onActionPressed: () {
                print('open location');
                _showMessage(context, massege: 'open map');
              },
            ),
            const Spacer(),
            Text('elancer 2',style: GoogleFonts.cairo(
              fontSize: 14
            ),)
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
    );
  }

  void _showMessage(BuildContext context, {required String massege}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(massege),
        backgroundColor: Colors.pink.shade200,
        behavior: SnackBarBehavior.floating,
        // duration: Duration(microseconds: 5),
        elevation: 5,
        dismissDirection: DismissDirection.vertical,
        action: SnackBarAction(label: 'Undo', onPressed: (){},textColor: Colors.white),
      ),
    );
  }
}
