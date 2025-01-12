
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation/globe/globe.dart';
import 'package:flutter_animation/globe/tech_stack_icons.dart';

class GlobeScreen extends StatelessWidget {

  final List<String> slugs = [
    "typescript",
    "javascript",
    "dart",
    "java",
    "react",
    "flutter",
    "android",
    "html5",
    "css3",
    "nodedotjs",
    "express",
    "nextdotjs",
    "prisma",
    "amazonaws",
    "postgresql",
    "firebase",
    "nginx",
    "vercel",
    "testinglibrary",
    "jest",
    "cypress",
    "docker",
    "git",
    "jira",
    "github",
    "gitlab",
    "visualstudiocode",
    "androidstudio",
    "sonarqube",
    "figma",
  ];


  GlobeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Get icons using the helper
    final icons = TechStackIcons.getIconsFromSlugs(slugs);

    List<String?> filtered = [];
    filtered.addAll(slugs.where((element) => element.startsWith('g')));
   // filtered.add(slugs.firstWhereOrNull((element) => element.startsWith("g"),)) ;


    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(16),
        ),
        child: GlobeOfLogos(
          icons: icons,
          radius: 120,
          defaultIconColor: Colors.white70,
        ),
      ),
    );
  }
}
