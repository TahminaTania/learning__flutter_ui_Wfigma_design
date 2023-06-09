import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning__flutter/landing_page.dart';
import 'package:learning__flutter/login/cubit/login_cubit.dart';
import 'package:learning__flutter/pages/blog/blog_page.dart';
import 'package:learning__flutter/pages/blog/cubit/fetchdata_cubit.dart';
import 'package:learning__flutter/pages/blog/repository.dart';
import 'package:learning__flutter/pages/log_in_page.dart';
import 'package:learning__flutter/screens/components/appbar.dart';
import 'package:learning__flutter/screens/components/res_practice1.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)?.settings.arguments as String?;
    var screenSize = MediaQuery.of(context).size;
    //var screenWidth = screenSize.width;
    //var screenHeight = screenSize.height;
    String hexColor = "#4CAF4F";
    Color Regcolor =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 1000),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(child: Text('Nexcent')),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Home',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Features',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Comunity',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BlocProvider(
                                          create: (context) =>
                                              FetchdataCubit(UserRepository()),
                                          child: BlogPage(),
                                        )));
                          },
                          child: Text(
                            'Blog',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BlocProvider(
                                          create: (context) => LoginCubit(),
                                          child: LoginPage(),
                                        )));
                          },
                          child: Container(
                            color: Regcolor,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 9.74,
                                  left: 22.27,
                                  right: 22.27,
                                  bottom: 9.74),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  BlocBuilder<LoginCubit, LoginState>(
                                    builder: (context, state) {
                                      return Text(' ${name ?? 'Register Now'}',
                                          style:
                                              TextStyle(color: Colors.white));
                                    },
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.white,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: LandingPage());
    // body: ResPractice());
  }
}
