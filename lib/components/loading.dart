import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset('assets/animation/loading.json', fit: BoxFit.cover),
            Text('ກຳລັງໂຫລດຂໍ້ມູນ'),
          ],
        ),
      ),
    );
  }
}
