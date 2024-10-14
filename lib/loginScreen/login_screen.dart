// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:slider/today/custom_button.dart';
import 'package:slider/today/onTap_whatapp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  bool isLoading = false;
  bool _isTextVisible = false;
  bool isChecked = false;
  bool _isTextEmpty = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    emailController.addListener(_handleTextChange);
    passwordController.addListener(_handleTextChange);
  }

  void _handleTextChange() {
    setState(() {
      _isTextEmpty =
          emailController.text.isNotEmpty || passwordController.text.isNotEmpty;
    });
  }

  void _toggleVisibility() {
    setState(() {
      _isTextVisible = !_isTextVisible;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: const Color(0xfffef7ff),
            elevation: 0,
            title: Text(
              'Login',
              style: TextStyle(
                  fontWeight: FontWeight.w800, fontSize: height * .03),
            ),
          ),
          resizeToAvoidBottomInset: true,
          backgroundColor: const Color(0xfffef7ff),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  top: height * .03, left: width * .06, right: width * .06),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(
                          color: const Color(0xffda1c39),
                          fontWeight: FontWeight.w900,
                          fontSize: height * .02),
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }

                        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      controller: emailController,
                      cursorHeight: 20,
                      style: TextStyle(color: Colors.black54),
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Color(0xffda1c39),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: const Color(0xfff4f4f4),
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    SizedBox(
                      height: height * .03,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          color: const Color(0xffda1c39),
                          fontWeight: FontWeight.w900,
                          fontSize: height * .02),
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                      controller: passwordController,
                      cursorHeight: 20,
                      style: const TextStyle(color: Colors.black54),
                      cursorColor: Color(0xffda1c39),
                      obscureText:
                          !_isTextVisible, // This should toggle the visibility
                      decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: _toggleVisibility,
                            child: Icon(
                              _isTextVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          fillColor: const Color(0xfff4f4f4),
                          filled: true,
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    SizedBox(
                      height: height * .004,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: height * .01),
                      child: Row(
                        children: [
                          Checkbox(
                            activeColor: const Color(0xffda1c39),
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          SizedBox(
                            width: height * .004,
                          ),
                          Text(
                            'Remember to me',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: height * .017),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * .017,
                                  color: const Color(0xffda1c39)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    Container(
                      height: width > 600 ? height * .13 : height * .06,
                      decoration: BoxDecoration(
                          color: const Color(0xfff4f4f4),
                          borderRadius: BorderRadius.circular(20)),
                      child: TabBar(
                        dividerColor: const Color(0xfff4f4f4),
                        padding: const EdgeInsets.all(2),
                        labelColor: Color(0xffda1c39),
                        controller: _tabController,
                        splashBorderRadius: BorderRadius.circular(20),
                        indicator: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(2, 3),
                                blurRadius: 7,
                                spreadRadius: 3,
                                color: Colors.black12)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        indicatorPadding: EdgeInsets.zero,
                        labelPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        unselectedLabelColor: Colors.black54,
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: [
                          const Center(
                            child: Text(
                              'User',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                'installer',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: width < 500 ? height * .02 : height * .03,
                    ),
                    CustomButton(
                      text: isLoading
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                      withShadow: true,
                      onPressed: () async {
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            isLoading = true;
                          });

                          await Future.delayed(Duration(seconds: 3));

                          setState(() {
                            isLoading = false;
                          });

                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Operation completed!'),
                            ),
                          );
                        }
                      },
                      color: _isTextEmpty
                          ? // Button color when fields are filled

                          Color(0xffda1c39)
                          : Colors.grey, // Button color when fields are empty
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    CustomButton(
                      text: Text('Wifi Configuration'),
                      onPressed: () {},
                      color: Color(0xfff4f4f4),
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    CustomButton(
                      text: Text('Register'),
                      textColor: Colors.black,
                      onPressed: () {},
                      color: Color(0xfff4f4f4),
                    ),
                    SizedBox(
                      height: height * .04,
                    ),
                    whatsapOntap(height: height),
                    SizedBox(
                      height: height * .10,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
