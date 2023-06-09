import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/footer_frame.dart';
import 'package:learning__flutter/screens/components/footer_frame2.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(
            child: Text(
          "Pellentesque suscipit\n fringilla libero eu.",
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            fontSize: ResponsiveWidget.isSmallScreen(context)
                ? Globals.width / 15
                : Globals.width / 30,
          ),
        )),
        SizedBox(
          height: 20,
        ),
        SizedBox(
            child: InkWell(
                onTap: () {},
                child: Container(
                  color: Colors.green[600],
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 9.74, left: 22.27, right: 22.27, bottom: 9.74),
                    child: Text(
                      "Get a Demo",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ))),
        SizedBox(
          height: 40,
        ),
        Container(
          height: ResponsiveWidget.isLargeScreen(context) ? 300 : null,
          color: Color.fromRGBO(38, 50, 56, 1),
          child: ResponsiveWidget.isLargeScreen(context)
              ? FooterFrame()
              : FooterFrame2(),
        )
      ]),
    );
  }
}
