import 'package:fade_out_particle/fade_out_particle.dart';
import 'package:flutter/material.dart';

class FadeOutParticleScreen extends StatefulWidget {
  const FadeOutParticleScreen({super.key});

  @override
  State<FadeOutParticleScreen> createState() => _FadeOutParticleScreenState();
}

class _FadeOutParticleScreenState extends State<FadeOutParticleScreen> {
  bool _disappear = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeOutParticle(
                curve: Curves.linear,
                disappear: _disappear,
                duration: const Duration(milliseconds: 3000),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.flutter_dash,
                      size: 52,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Fade out Particle',
                      // style: Theme.of(context).textTheme.headline6?.copyWith(
                      //       fontWeight: FontWeight.w900,
                      //     ),
                    ),
                  ],
                ),
                onAnimationEnd: () => print('animation ended'),
              ),
              const SizedBox(height: 50),
              OutlinedButton(
                onPressed: () => setState(() => _disappear = !_disappear),
                child: Text(_disappear ? 'Reset' : 'Start'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
