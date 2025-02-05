
import 'package:flutter/material.dart';
import 'package:add_to_cart_animation/add_to_cart_animation.dart';

class JumpToCartScreen extends StatefulWidget {
  const JumpToCartScreen({super.key});

  @override
  State<JumpToCartScreen> createState() => _JumpToCartScreenState();
}

class _JumpToCartScreenState extends State<JumpToCartScreen> {

  // We can detect the location of the cart by this  GlobalKey<CartIconKey>
  GlobalKey<CartIconKey> cartKey = GlobalKey<CartIconKey>();
  late Function(GlobalKey) runAddToCartAnimation;
  var _cartQuantityItems = 0;

  @override
  Widget build(BuildContext context) {
    // return AddToCartAnimation(
    //     child: child, cartKey: cartKey, createAddToCartAnimation: createAddToCartAnimation);
    return Container();
  }
}
