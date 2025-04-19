import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class AnimatedToggleSwitchPage extends StatefulWidget {
  const AnimatedToggleSwitchPage({super.key});

  @override
  State<AnimatedToggleSwitchPage> createState() =>
      _AnimatedToggleSwitchPageState();
}

class _AnimatedToggleSwitchPageState extends State<AnimatedToggleSwitchPage> {
  int value = 0;
  int? nullableValue;
  int? nullableValue2 = 0;
  bool positive = false;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text("USE animated_toggle_switch library"),
              SizedBox(
                height: 10,
              ),
              AnimatedToggleSwitch<bool>.dual(
                current: positive,
                first: false,
                second: true,
                spacing: 50.0,
                style: const ToggleStyle(
                  borderColor: Colors.transparent,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1.5),
                    ),
                  ],
                ),
                borderWidth: 5.0,
                height: 55,
                onChanged: (b) => setState(() => positive = b),
                styleBuilder: (b) =>
                    ToggleStyle(indicatorColor: b ? Colors.red : Colors.green),
                iconBuilder: (value) => value
                    ? Icon(Icons.coronavirus_rounded)
                    : Icon(Icons.tag_faces_rounded),
                textBuilder: (value) => value
                    ? Center(child: Text('Oh no...'))
                    : Center(child: Text('Nice :)')),
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<bool>.dual(
                current: positive,
                first: false,
                second: true,
                spacing: 50.0,
                style: const ToggleStyle(
                  borderColor: Colors.transparent,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1.5),
                    ),
                  ],
                ),
                borderWidth: 5.0,
                height: 55,
                onChanged: (b) => setState(() => positive = b),
                styleBuilder: (b) => ToggleStyle(
                  backgroundColor: b ? Colors.white : Colors.black,
                  indicatorColor: b ? Colors.blue : Colors.red,
                  borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(4.0), right: Radius.circular(50.0)),
                  indicatorBorderRadius: BorderRadius.circular(b ? 50.0 : 4.0),
                ),
                iconBuilder: (value) => Icon(
                  value
                      ? Icons.access_time_rounded
                      : Icons.power_settings_new_rounded,
                  size: 32.0,
                  color: value ? Colors.black : Colors.white,
                ),
                textBuilder: (value) => value
                    ? const Center(
                        child:
                            Text('On', style: TextStyle(color: Colors.black)))
                    : const Center(
                        child:
                            Text('Off', style: TextStyle(color: Colors.white))),
              ),
              SizedBox(
                height: 5,
              ),
              DefaultTextStyle.merge(
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
                child: IconTheme.merge(
                  data: const IconThemeData(color: Colors.white),
                  child: AnimatedToggleSwitch<bool>.dual(
                    current: positive,
                    first: false,
                    second: true,
                    spacing: 45.0,
                    animationDuration: const Duration(milliseconds: 600),
                    style: const ToggleStyle(
                      borderColor: Colors.transparent,
                      indicatorColor: Colors.white,
                      backgroundColor: Colors.black,
                    ),
                    customStyleBuilder: (context, local, global) {
                      if (global.position <= 0.0) {
                        return ToggleStyle(backgroundColor: Colors.red[800]);
                      }
                      return ToggleStyle(
                          backgroundGradient: LinearGradient(
                        colors: [Colors.green, Colors.red[800]!],
                        stops: [
                          global.position -
                              (1 - 2 * max(0, global.position - 0.5)) * 0.7,
                          global.position +
                              max(0, 2 * (global.position - 0.5)) * 0.7,
                        ],
                      ));
                    },
                    borderWidth: 6.0,
                    height: 60.0,
                    loadingIconBuilder: (context, global) =>
                        CupertinoActivityIndicator(
                            color: Color.lerp(Colors.red[800], Colors.green,
                                global.position)),
                    onChanged: (b) => setState(() => positive = b),
                    iconBuilder: (value) => value
                        ? const Icon(Icons.power_outlined,
                            color: Colors.green, size: 32.0)
                        : Icon(Icons.power_settings_new_rounded,
                            color: Colors.red[800], size: 32.0),
                    textBuilder: (value) => value
                        ? const Center(child: Text('Active'))
                        : const Center(child: Text('Inactive')),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              DefaultTextStyle.merge(
                style: const TextStyle(color: Colors.white),
                child: IconTheme.merge(
                  data: IconThemeData(color: Colors.white),
                  child: AnimatedToggleSwitch<bool>.dual(
                    current: positive,
                    first: false,
                    second: true,
                    spacing: 45.0,
                    style: const ToggleStyle(
                      borderColor: Colors.transparent,
                      backgroundColor: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 0.5),
                        ),
                      ],
                    ),
                    borderWidth: 10.0,
                    height: 50,
                    loadingIconBuilder: (context, global) =>
                        const CupertinoActivityIndicator(color: Colors.white),
                    onChanged: (b) {
                      setState(() => positive = b);
                      return Future<dynamic>.delayed(Duration(seconds: 2));
                    },
                    styleBuilder: (b) => ToggleStyle(
                        indicatorColor: b ? Colors.purple : Colors.green),
                    iconBuilder: (value) => value
                        ? const Icon(Icons.coronavirus_rounded)
                        : const Icon(Icons.tag_faces_rounded),
                    textBuilder: (value) => value
                        ? const Center(
                            child: Text('Oh no...',
                                style: TextStyle(color: Colors.white)))
                        : Center(child: Text('Nice :)')),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<bool>.dual(
                current: positive,
                first: false,
                second: true,
                spacing: 45.0,
                animationDuration: const Duration(milliseconds: 600),
                style: ToggleStyle(
                  borderColor: Colors.transparent,
                  indicatorColor: Colors.white,
                  backgroundColor: Colors.amber,
                ),
                customStyleBuilder: (context, local, global) => ToggleStyle(
                    backgroundGradient: LinearGradient(
                  colors: [Colors.green, Colors.red],
                  stops: [
                    global.position -
                        (1 - 2 * max(0, global.position - 0.5)) * 0.5,
                    global.position + max(0, 2 * (global.position - 0.5)) * 0.5,
                  ],
                )),
                borderWidth: 6.0,
                height: 60.0,
                loadingIconBuilder: (context, global) =>
                    CupertinoActivityIndicator(
                        color: Color.lerp(
                            Colors.red, Colors.green, global.position)),
                onChanged: (b) {
                  setState(() => positive = b);
                  return Future<dynamic>.delayed(Duration(seconds: 2));
                },
                iconBuilder: (value) => value
                    ? Icon(Icons.power_outlined,
                        color: Colors.green, size: 32.0)
                    : Icon(Icons.power_settings_new_rounded,
                        color: Colors.red, size: 32.0),
                textBuilder: (value) => Center(
                    child: Text(
                  value ? 'On' : 'Off',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600),
                )),
              ),
              SizedBox(
                height: 5,
              ),
              DefaultTextStyle.merge(
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
                child: IconTheme.merge(
                  data: IconThemeData(color: Colors.white),
                  child: AnimatedToggleSwitch<bool>.dual(
                    current: positive,
                    first: false,
                    second: true,
                    spacing: 45.0,
                    animationCurve: Curves.easeInOut,
                    animationDuration: const Duration(milliseconds: 600),
                    style: ToggleStyle(
                      borderColor: Colors.transparent,
                      indicatorColor: Colors.white,
                      backgroundColor: Colors.black,
                    ),
                    styleBuilder: (value) => ToggleStyle(
                        backgroundColor:
                            value ? Colors.green : Colors.red[800]),
                    borderWidth: 6.0,
                    height: 60.0,
                    loadingIconBuilder: (context, global) =>
                        CupertinoActivityIndicator(
                            color: Color.lerp(Colors.red[800], Colors.green,
                                global.position)),
                    onChanged: (b) => setState(() => positive = b),
                    iconBuilder: (value) => value
                        ? Icon(Icons.lightbulb_outline_rounded,
                            color: Colors.green, size: 28.0)
                        : Icon(Icons.power_settings_new_rounded,
                            color: Colors.red[800], size: 30.0),
                    textBuilder: (value) => value
                        ? Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text('Active'))
                        : Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text('Inactive')),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<int>.size(
                current: min(value, 2),
                style: ToggleStyle(
                  backgroundColor: Color(0xFF919191),
                  indicatorColor: Color(0xFFEC3345),
                  borderColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(20.0),
                  indicatorBorderRadius: BorderRadius.zero,
                ),
                animationDuration: Duration(milliseconds: 300),
                values: const [0, 1, 2],
                iconOpacity: 1.0,
                selectedIconScale: 1.0,
                indicatorSize: const Size.fromWidth(100),
                // iconAnimationType: AnimationType.onHover,
                // styleAnimationType: AnimationType.onHover,
                spacing: 2.0,
                // customSeparatorBuilder: (context, local, global) {
                //   final opacity =
                //       ((global.position - local.position).abs() - 0.5)
                //           .clamp(0.0, 1.0);
                //   return VerticalDivider(
                //       indent: 10.0,
                //       endIndent: 10.0,
                //       color: Colors.white38.withOpacity(opacity));
                // },
                customIconBuilder: (context, local, global) {
                  final text = const ['not', 'only', 'icons'][local.index];
                  return Center(
                      child: Text(text,
                          style: TextStyle(
                              color: Color.lerp(Colors.black, Colors.white,
                                  local.animationValue))));
                },
                styleBuilder: (value) {
                  return ToggleStyle(borderRadius: BorderRadius.all(Radius.circular(30)));
                },
                borderWidth: 0.0,
                onChanged: (i) => setState(() => value = i),
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<int?>.rolling(
                allowUnlistedValues: true,
                styleAnimationType: AnimationType.onHover,
                current: nullableValue,
                values: const [0, 1, 2, 3],
                onChanged: (i) => setState(() => nullableValue = i),
                iconBuilder: rollingIconBuilder,
                customStyleBuilder: (context, local, global) {
                  final color = local.isValueListed
                      ? null
                      : Theme.of(context).colorScheme.error;
                  return ToggleStyle(borderColor: color, indicatorColor: color);
                },
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<int>.rolling(
                current: value,
                indicatorIconScale: sqrt2,
                values: const [0, 1, 2, 3],
                onChanged: (i) {
                  setState(() => value = i);
                  return Future<dynamic>.delayed(Duration(seconds: 3));
                },
                iconBuilder: rollingIconBuilder,
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<int?>.rolling(
                allowUnlistedValues: true,
                styleAnimationType: AnimationType.onHover,
                current: nullableValue,
                values: const [0, 1, 2, 3],
                onChanged: (i) => setState(() => nullableValue = i),
                iconBuilder: rollingIconBuilder,
                customStyleBuilder: (context, local, global) {
                  final color = local.isValueListed
                      ? null
                      : Theme.of(context).colorScheme.error;
                  return ToggleStyle(borderColor: color, indicatorColor: color);
                },
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<int>.rolling(
                active: true,
                current: value,
                values: const [0, 1, 2, 3],
                indicatorIconScale: sqrt2,
                onChanged: (i) {
                  setState(() {
                    value = i;
                    loading = true;
                  });
                  return Future<Object?>.delayed(Duration(seconds: 3))
                      .then((_) => setState(() => loading = false));
                },
                iconBuilder: rollingIconBuilder,
                style: ToggleStyle(
                  borderColor: Colors.transparent,
                  indicatorBoxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1.5),
                    )
                  ],
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1.5),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              IconTheme.merge(
                data: IconThemeData(color: Colors.white),
                child: AnimatedToggleSwitch<int>.rolling(
                  current: value,
                  values: const [0, 1, 2, 3],
                  onChanged: (i) => setState(() => value = i),
                  style: ToggleStyle(
                    indicatorColor: Colors.white,
                    borderColor: Colors.transparent,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1.5),
                      )
                    ],
                  ),
                  indicatorIconScale: sqrt2,
                  iconBuilder: coloredRollingIconBuilder,
                  borderWidth: 3.0,
                  styleAnimationType: AnimationType.onHover,
                  styleBuilder: (value) => ToggleStyle(
                    backgroundColor: colorBuilder(value),
                    borderRadius: BorderRadius.circular(value * 10.0),
                    indicatorBorderRadius: BorderRadius.circular(value * 10.0),
                    // indicatorBorderRadius: BorderRadius.circular(10.0),
                    // borderRadius: BorderRadius.circular( 10.0),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<int>.rolling(
                current: value,
                allowUnlistedValues: true,
                values: const [0, 1, 2, 3],
                onChanged: (i) => setState(() => value = i),
                iconBuilder: rollingIconBuilder,
                separatorBuilder: (index) => const VerticalDivider(),
                borderWidth: 4.5,
                style: ToggleStyle(
                  indicatorColor: Colors.white,
                  backgroundColor: Colors.amber,
                  borderColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 55,
                spacing: 20.0,
                loading: loading,
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<int?>.rolling(
                current: nullableValue2,
                allowUnlistedValues: true,
                values: const [0, 1, 2, 3],
                onTap: (info) {
                  if (nullableValue2 == info.tapped?.value) {
                    setState(() => nullableValue2 = null);
                  }
                },
                onChanged: (i) => setState(() => nullableValue2 = i),
                iconBuilder: rollingIconBuilder,
                borderWidth: 4.5,
                style: ToggleStyle(
                  indicatorColor: Colors.white,
                  backgroundGradient:
                      const LinearGradient(colors: [Colors.red, Colors.blue]),
                  borderColor: Colors.transparent,
                ),
                height: 55,
                spacing: 20.0,
                loading: loading,
              ),
              SizedBox(
                height: 5,
              ),
              CustomAnimatedToggleSwitch<bool>(
                current: positive,
                values: [false, true],
                spacing: 0.0,
                indicatorSize: Size.square(30.0),
                animationDuration: const Duration(milliseconds: 200),
                animationCurve: Curves.linear,
                onChanged: (b) => setState(() => positive = b),
                iconBuilder: (context, local, global) {
                  return const SizedBox();
                },
                cursors: ToggleCursors(defaultCursor: SystemMouseCursors.click),
                onTap: (_) => setState(() => positive = !positive),
                iconsTappable: false,
                wrapperBuilder: (context, global, child) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                          left: 10.0,
                          right: 10.0,
                          height: 20.0,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color.lerp(Colors.black26,
                                  Colors.blueAccent, global.position),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50.0)),
                            ),
                          )),
                      child,
                    ],
                  );
                },
                foregroundIndicatorBuilder: (context, global) {
                  return SizedBox.fromSize(
                    size: global.indicatorSize,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.lerp(
                            Colors.white, Colors.blueAccent, global.position),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black38,
                              spreadRadius: 0.05,
                              blurRadius: 1.1,
                              offset: Offset(0.0, 0.8))
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<int>.size(
                current: value,
                values: const [0, 1, 2, 3],
                iconOpacity: 0.2,
                indicatorSize: const Size.fromWidth(100),
                iconAnimationType: AnimationType.onHover,
                styleAnimationType: AnimationType.onHover,
                iconBuilder: (value) => Icon(
                    value.isEven ? Icons.cancel : Icons.access_time_rounded),
                style: ToggleStyle(
                  borderColor: Colors.transparent,
                ),
                borderWidth: 0.0,
                styleBuilder: (i) {
                  final color = colorBuilder(i);
                  return ToggleStyle(
                    backgroundColor: color.withOpacity(0.3),
                    indicatorColor: color,
                  );
                },
                onChanged: (i) {
                  setState(() => value = i);
                  return Future<dynamic>.delayed(Duration(seconds: 1));
                },
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<int>.size(
                textDirection: TextDirection.rtl,
                current: value,
                values: const [0, 1, 2, 3],
                iconOpacity: 0.2,
                indicatorSize: const Size.fromWidth(100),
                iconBuilder: iconBuilder,
                borderWidth: 1.0,
                iconAnimationType: AnimationType.onHover,
                style: ToggleStyle(
                  backgroundColor: Colors.grey,
                  borderColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1.5),
                    ),
                  ],
                ),
                styleBuilder: (i) =>
                    ToggleStyle(indicatorColor: colorBuilder(i)),
                onChanged: (i) => setState(() => value = i),
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<bool>.size(
                current: positive,
                values: const [false, true],
                iconOpacity: 0.2,
                indicatorSize: const Size.fromWidth(100),
                customIconBuilder: (context, local, global) => Text(
                    local.value ? 'RAM' : 'CPU',
                    style: TextStyle(
                        color: Color.lerp(
                            Colors.black, Colors.white, local.animationValue))),
                borderWidth: 4.0,
                iconAnimationType: AnimationType.onHover,
                style: ToggleStyle(
                  indicatorColor: Colors.teal,
                  borderColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1.5),
                    ),
                  ],
                ),
                selectedIconScale: 1.0,
                onChanged: (b) => setState(() => positive = b),
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<int>.size(
                textDirection: TextDirection.rtl,
                current: value,
                values: const [0, 1, 2, 3],
                iconOpacity: 0.2,
                indicatorSize: const Size.fromWidth(100),
                customIconBuilder: (context, local, global) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${local.value}'),
                      alternativeIconBuilder(context, local, global),
                    ],
                  );
                },
                style: ToggleStyle(borderColor: Colors.grey),
                styleBuilder: (i) => ToggleStyle(
                    indicatorColor:
                        i.isEven == true ? Colors.amber : Colors.red),
                onChanged: (i) => setState(() => value = i),
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<int>.size(
                current: value,
                values: const [0, 1, 2, 3],
                iconOpacity: 1.0,
                selectedIconScale: 1.0,
                indicatorSize: const Size.fromWidth(25),
                foregroundIndicatorIconBuilder: (context, global) {
                  double pos = global.position;
                  double transitionValue = pos - pos.floorToDouble();
                  return Transform.rotate(
                      angle: 2.0 * pi * transitionValue,
                      child: Stack(children: [
                        Opacity(
                            opacity: 1 - transitionValue,
                            child: iconBuilder(pos.floor())),
                        Opacity(
                            opacity: transitionValue,
                            child: iconBuilder(pos.ceil()))
                      ]));
                },
                iconBuilder: iconBuilder,
                style: const ToggleStyle(
                  borderColor: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  indicatorBorderRadius: BorderRadius.zero,
                ),
                styleBuilder: (i) => ToggleStyle(
                    indicatorColor:
                        i.isEven == true ? Colors.green : Colors.tealAccent),
                onChanged: (i) => setState(() => value = i),
              ),
              SizedBox(
                height: 5,
              ),
              AnimatedToggleSwitch<int>.rollingByHeight(
                height: 50.0,
                current: value,
                values: const [0, 1, 2, 3],
                onChanged: (i) => setState(() => value = i),
                iconBuilder: rollingIconBuilder,
                indicatorSize: const Size.fromWidth(2),
              ),
              SizedBox(height: 5.0),
              AnimatedToggleSwitch<int>.rollingByHeight(
                height: 50.0,
                current: value,
                values: const [0, 1, 2, 3],
                onChanged: (i) => setState(() => value = i),
                iconBuilder: rollingIconBuilder,
                indicatorSize: const Size.square(1.5),
                style: ToggleStyle(borderRadius: BorderRadius.circular(75.0)),
              ),
              SizedBox(height: 5.0),
              AnimatedToggleSwitch<int>.rollingByHeight(
                height: 50.0,
                current: value,
                values: const [0, 1, 2, 3],
                onChanged: (i) => setState(() => value = i),
                iconBuilder: rollingIconBuilder,
                indicatorSize: const Size.square(1),
                style: ToggleStyle(borderRadius: BorderRadius.circular(75.0)),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 10,
              ),
              Text("USE toggle_switch library"),
              SizedBox(
                height: 10,
              ),
              ToggleSwitch(
                initialLabelIndex: 0,
                totalSwitches: 3,
                labels: ['America', 'Canada', 'Mexico'],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 5,
              ),
              ToggleSwitch(
                minWidth: 90.0,
                minHeight: 50.0,
                fontSize: 16.0,
                initialLabelIndex: 1,
                activeBgColor: [Colors.green],
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.grey[900],
                totalSwitches: 3,
                labels: ['Tall', 'Grande', 'Venti'],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 5,
              ),
              ToggleSwitch(
                customWidths: [90.0, 40.0],
                cornerRadius: 20.0,
                activeBgColors: [
                  [Colors.cyan],
                  [Colors.redAccent]
                ],
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                totalSwitches: 2,
                labels: ['YES', ''],
                icons: [null, FontAwesomeIcons.times],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 5,
              ),
              ToggleSwitch(
                minWidth: 90.0,
                initialLabelIndex: 1,
                cornerRadius: 10.0,
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                totalSwitches: 2,
                labels: ['Male', 'Female'],
                icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
                activeBgColors: [
                  [Colors.blue],
                  [Colors.pink]
                ],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 5,
              ),
              ToggleSwitch(
                minWidth: 90.0,
                minHeight: 50.0,
                initialLabelIndex: 2,
                cornerRadius: 20.0,
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                totalSwitches: 3,
                icons: [
                  FontAwesomeIcons.mars,
                  FontAwesomeIcons.venus,
                  FontAwesomeIcons.transgender
                ],
                iconSize: 30.0,
                borderWidth: 2.0,
                borderColor: [Colors.blueGrey],
                activeBgColors: [
                  [Colors.blue],
                  [Colors.pink],
                  [Colors.purple]
                ],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 5,
              ),
              ToggleSwitch(
                minWidth: 90.0,
                minHeight: 70.0,
                initialLabelIndex: 0,
                cornerRadius: 20.0,
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                totalSwitches: 3,
                icons: [
                  FontAwesomeIcons.facebook,
                  FontAwesomeIcons.twitter,
                  FontAwesomeIcons.instagram
                ],
                iconSize: 30.0,
                borderColor: [
                  Color(0xff3b5998),
                  Color(0xff8b9dc3),
                  Color(0xff00aeff),
                  Color(0xff0077f2),
                  Color(0xff962fbf),
                  Color(0xff4f5bd5)
                ],
                dividerColor: Colors.blueGrey,
                activeBgColors: [
                  [Color(0xff3b5998), Color(0xff8b9dc3)],
                  [Color(0xff00aeff), Color(0xff0077f2)],
                  [
                    Color(0xfffeda75),
                    Color(0xfffa7e1e),
                    Color(0xffd62976),
                    Color(0xff962fbf),
                    Color(0xff4f5bd5)
                  ]
                ],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 5,
              ),
              ToggleSwitch(
                minWidth: 90.0,
                minHeight: 70.0,
                initialLabelIndex: 0,
                cornerRadius: 20.0,
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                totalSwitches: 2,
                icons: [
                  FontAwesomeIcons.lightbulb,
                  FontAwesomeIcons.solidLightbulb,
                ],
                iconSize: 30.0,
                activeBgColors: [
                  [Colors.black45, Colors.black26],
                  [Colors.yellow, Colors.orange]
                ],
                animate:
                    true, // with just animate set to true, default curve = Curves.easeIn
                curve: Curves
                    .easeIn, // animate must be set to true when using custom curve
                animationDuration: 200,
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 5,
              ),
              ToggleSwitch(
                minWidth: 90.0,
                cornerRadius: 20.0,
                activeBgColors: [
                  [Colors.green[800]!],
                  [Colors.red[800]!]
                ],
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                initialLabelIndex: 1,
                totalSwitches: 2,
                labels: ['True', 'False'],
                radiusStyle: true,
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 5,
              ),
              ToggleSwitch(
                minWidth: 90.0,
                cornerRadius: 20.0,
                inactiveFgColor: Colors.white,
                initialLabelIndex: null,
                doubleTapDisable: true, // re-tap active widget to de-activate
                totalSwitches: 3,
                labels: ['Normal', 'Bold', 'Italic'],
                customTextStyles: [
                  null,
                  TextStyle(
                      color: Colors.brown,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900),
                  TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic)
                ],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 5,
              ),
              ToggleSwitch(
                minWidth: 90.0,
                minHeight: 90.0,
                cornerRadius: 20.0,
                activeBgColors: [
                  [Color(0xfffdbb0a)],
                  [Colors.black54],
                  [Colors.white54]
                ],
                inactiveFgColor: Colors.white,
                initialLabelIndex: 2,
                totalSwitches: 3,
                customIcons: [
                  Icon(
                    FontAwesomeIcons.ccVisa,
                    color: Color(0xff1a1f71),
                    size: 55.0,
                  ),
                  Icon(
                    FontAwesomeIcons.ccMastercard,
                    color: Color(0xffF79E1B),
                    size: 55.0,
                  ),
                  Icon(
                    FontAwesomeIcons.ccAmex,
                    color: Color(0xff27AEE3),
                    size: 55.0,
                  )
                ],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 5,
              ),
              ToggleSwitch(
                activeBorders: [
                  Border.all(
                    color: Colors.purple,
                    width: 3.0,
                  ),
                  Border.all(
                    color: Colors.yellow.shade700,
                    width: 3.0,
                  ),
                  Border.all(
                    color: Colors.deepOrangeAccent,
                    width: 3.0,
                  ),
                  Border.all(
                    color: Colors.blue.shade500,
                    width: 3.0,
                  ),
                ],
                activeFgColor: Colors.black54,
                isVertical: false,
                minWidth: 150.0,
                radiusStyle: true,
                cornerRadius: 20.0,
                initialLabelIndex: 2,
                activeBgColors: [
                  [Colors.purpleAccent],
                  [Colors.yellow],
                  [Colors.orange],
                  [Colors.lightBlueAccent]
                ],
                labels: ['Spring', 'Summer', 'Fall', 'Winter'],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 5,
              ),
              ToggleSwitch(
                activeBorders: [
                  Border.all(
                    color: Colors.purple,
                    width: 3.0,
                  ),
                  Border.all(
                    color: Colors.yellow.shade700,
                    width: 3.0,
                  ),
                  Border.all(
                    color: Colors.deepOrangeAccent,
                    width: 3.0,
                  ),
                  Border.all(
                    color: Colors.blue.shade500,
                    width: 3.0,
                  ),
                ],
                activeFgColor: Colors.black54,
                isVertical: true,
                minWidth: 150.0,
                radiusStyle: true,
                cornerRadius: 20.0,
                initialLabelIndex: 2,
                activeBgColors: [
                  [Colors.purpleAccent],
                  [Colors.yellow],
                  [Colors.orange],
                  [Colors.lightBlueAccent]
                ],
                labels: ['Spring', 'Summer', 'Fall', 'Winter'],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: 5,
              ),
              ToggleSwitch(
                initialLabelIndex: 0,
                minHeight: 100.0,
                minWidth: 100.0,
                activeBgColor: [Colors.blueAccent.shade200],
                activeFgColor: Colors.yellow,
                customTextStyles: [TextStyle(fontSize: 15.0)],
                multiLineText: true,
                centerText: true,
                totalSwitches: 2,
                labels: ['This is multi-line text.', 'One line'],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color colorBuilder(int value) => switch (value) {
        0 => Colors.blueAccent,
        1 => Colors.green,
        2 => Colors.orangeAccent,
        _ => Colors.red,
      };

  Widget coloredRollingIconBuilder(int value, bool foreground) {
    final color = foreground ? colorBuilder(value) : null;
    return Icon(
      iconDataByValue(value),
      color: color,
    );
  }

  Widget iconBuilder(int value) {
    return rollingIconBuilder(value, false);
  }

  Widget rollingIconBuilder(int? value, bool foreground) {
    return Icon(iconDataByValue(value));
  }

  IconData iconDataByValue(int? value) => switch (value) {
        0 => Icons.access_time_rounded,
        1 => Icons.check_circle_outline_rounded,
        2 => Icons.power_settings_new_rounded,
        _ => Icons.lightbulb_outline_rounded,
      };

  Widget sizeIconBuilder(BuildContext context,
      AnimatedToggleProperties<int> local, GlobalToggleProperties<int> global) {
    return iconBuilder(local.value);
  }

  Widget alternativeIconBuilder(BuildContext context,
      AnimatedToggleProperties<int> local, GlobalToggleProperties<int> global) {
    IconData data = Icons.access_time_rounded;
    switch (local.value) {
      case 0:
        data = Icons.ac_unit_outlined;
        break;
      case 1:
        data = Icons.account_circle_outlined;
        break;
      case 2:
        data = Icons.assistant_navigation;
        break;
      case 3:
        data = Icons.arrow_drop_down_circle_outlined;
        break;
    }
    return Icon(data);
  }
}

const tappableTextStyle = TextStyle(color: Colors.blue);

final toggleSwitchUrl = Uri.parse('https://pub.dev/packages/toggle_switch');
final liteRollingSwitchUrl =
    Uri.parse('https://pub.dev/packages/lite_rolling_switch');
final crazySwitchUrl =
    Uri.parse('https://github.com/pedromassango/crazy-switch');
