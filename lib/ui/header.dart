import 'package:flutter/material.dart';
import 'package:profile/ui/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config/constants.dart';
import '../config/colors.dart';

class Header extends StatelessWidget {
  final String _name = "Md. Kawser Ahmed";
  final String _job = "Software Developer";
  final String _description =
      "I am developer has around 2.5 years experience developing mobile applications, using fart languages in Flutter framwork and techniques.";

  const Header({super.key});

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I’m $_name',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                _job,
                style: TextStyle(
                  color: AppColors.greyLight,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  _description,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.grey[100],
                        fontSize: 17,
                      ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  ),
                  backgroundColor: MaterialStatePropertyAll(AppColors.brand),
                  textStyle: MaterialStatePropertyAll(TextStyle(
                    color: Colors.white,
                  )),
                ),
                onPressed: _downloadCV,
                child: Text('Download CV',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
        mobileScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: FittedBox(
            child: Column(
              children: [
                Text(
                  'I’m $_name',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  _job,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    _description,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.grey[100],
                          fontSize: 15,
                          height: 1.8,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    ),
                    backgroundColor: MaterialStatePropertyAll(AppColors.brand),
                    textStyle: MaterialStatePropertyAll(TextStyle(
                      color: Colors.white,
                    )),
                  ),
                  onPressed: _downloadCV,
                  child: const Text('Download CV',style: TextStyle(
                      color: Colors.white,
                    ),),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      );

  void _downloadCV() {
    // ignore: deprecated_member_use
    launch(AppConstants.cv);
  }
}
