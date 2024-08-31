import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sabi/common/constant.dart';
import 'package:sabi/presentation/widget/textfield_custom.dart';

class SigninPage extends StatelessWidget {
  static const String routeName = '/signin';
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                const Text(
                  'Selamat Datang 👋',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Masuk untuk melanjutkan',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextfieldCustom(
                        hintText: "Masukkan email", labelText: "Email"),
                    const SizedBox(height: 20),
                    const TextfieldCustom(
                      hintText: "Masukkan Password",
                      labelText: "Password",
                      isPassword: true,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: null,
                          child: Text(
                            'Lupa Password?',
                            style: TextStyle(
                              color: Constant.primaryColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Constant.primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.lerp(
                                    BorderRadius.circular(48),
                                    BorderRadius.circular(48),
                                    1)!)),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Belum punya akun?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Daftar',
                            style: TextStyle(
                              color: Constant.primaryColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      
                    )

                  ],
                )
              ],
            ),
          ),
        ));
  }
}
