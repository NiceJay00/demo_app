import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_new_app/main.dart';


class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  static const String routeName = 'splash-screen';
  static const String routePath = '/splashScreen';

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryTextColor = Colors.black;
    final secondaryTextColor = Colors.grey;
    final accentColor = const Color(0xFF660B05);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: theme.colorScheme.surface,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/images/splash_screen.jpg',
                fit: BoxFit.cover,
              ),
            ),

            // Title and tagline
            Positioned(
              top: 63,
              left: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Co-Lab',
                    style: GoogleFonts.interTight(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: primaryTextColor,
                    ),
                  ),
                  const SizedBox(height: 100),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Stay in the loop',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: primaryTextColor,
                        ),
                      ),
                      Text(
                        'Do not be locked out.',
                        style: GoogleFonts.inter(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: accentColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Bottom button and disclaimer text
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 287.8,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryTextColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, MyApp.routeSignIn);
                      },
                      child: Text(
                        "Let's Get Started",
                        style: GoogleFonts.interTight(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'By tapping on "Let\'s Get Started" you agree to our Terms and Privacy Policy',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: secondaryTextColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
