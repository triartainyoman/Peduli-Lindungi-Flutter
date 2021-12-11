import 'package:flutter/material.dart';
import 'package:peduli_lindungi/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peduli Lindungi',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: 17.0,
          top: 17.0,
          right: 17.0,
        ),
        child: Row(
          children: [
            Icon(
              Icons.account_circle_outlined,
            ),
            SizedBox(width: 17.0),
            Text(
              'Hi, I Nyoman Triarta',
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16.0,
              ),
            ),
            Spacer(),
            Icon(
              Icons.notifications_none,
            ),
          ],
        ),
      );
    }

    Widget banner() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          top: 25.0,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: primaryColor,
        ),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: defaultMargin,
                  top: 20.0,
                  bottom: defaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Entering a public space?",
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: defaultMargin),
                    Container(
                      width: 155.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: whiteColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.qr_code_scanner_rounded,
                            color: primaryColor,
                          ),
                          SizedBox(width: 7.0),
                          Text(
                            "Scan QR Code",
                            style: primaryTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/banner_image.png',
                width: 90.0,
              ),
            ],
          ),
        ),
      );
    }

    Widget menus() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          top: defaultMargin,
          right: defaultMargin,
        ),
        child: Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableButton(
                    image: "assets/icon_1.png",
                    text: "Vaccine\nCertificate",
                  ),
                  ReusableButton(
                    image: "assets/icon_2.png",
                    text: "Covid-19\nTest Results",
                  ),
                  ReusableButton(
                    image: "assets/icon_3.png",
                    text: "EHAC",
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableButton(
                    image: "assets/icon_4.png",
                    text: "Check-In\nHistory",
                  ),
                  ReusableButton(
                    image: "assets/icon_5.png",
                    text: "Travel\nRegulations",
                  ),
                  ReusableButton(
                    image: "assets/icon_6.png",
                    text: "Telemedicine",
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableButton(
                    image: "assets/icon_7.png",
                    text: "Healthcare\nFacility",
                  ),
                  ReusableButton(
                    image: "assets/icon_8.png",
                    text: "Covid-19\nStatistic",
                  ),
                  ReusableButton(
                    image: "assets/icon_9.png",
                    text: "Get Vaccine",
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: whiteColor,
        onPressed: () {},
        child: Icon(
          Icons.help_outline_rounded,
          color: primaryColor,
          size: 30.0,
        ),
      ),
      body: ListView(
        children: [
          header(),
          banner(),
          Divider(
            color: secondaryColor,
            thickness: 5.0,
            indent: 10,
            endIndent: 10,
          ),
          menus(),
        ],
      ),
    );
  }
}

class ReusableButton extends StatelessWidget {
  final String image;
  final String text;
  ReusableButton({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 80.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("$image"),
            SizedBox(height: 12.0),
            Text(
              "$text",
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
