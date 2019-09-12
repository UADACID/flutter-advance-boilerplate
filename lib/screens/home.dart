import 'package:boilerplate/widgets/shimmerEffect.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ShimmerEffect(
              height: 100.0,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: ShimmerEffect(
                height: 20.0,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: ShimmerEffect(
                height: 20.0,
                width: 320.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: ShimmerEffect(
                height: 20.0,
                width: 300.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
