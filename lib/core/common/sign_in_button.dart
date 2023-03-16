import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/core/constants/constants.dart';
import 'package:reddit_clone/features/auth/controller/auth_controller.dart';
import 'package:reddit_clone/theme/pallet.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({super.key});

  Future<void> signInWithGoogle(WidgetRef ref, BuildContext context) async {
    ref.read(authControllerProvider.notifier).signInWithGoogle(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return Padding(
      padding: const EdgeInsets.all(15),
      child: ElevatedButton.icon(
        onPressed: () {
          signInWithGoogle(ref, context);
        },
        icon: Image.asset(
          Constants.googlePath,
          height: 40,
        ),
        label: const Text(
          "Continue with google",
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Pallete.greyColor,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
