import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  // const AddToCart(
  //   Key? key,
  //   this.catalog,
  // ) : super(key: key);
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(
          key: key,
        );

  final cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = cart.items.contains(catalog) ?? false;
    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
            isInCart = isInCart.toggle();
            final catalog = CatalogModel();

            cart.add(catalog as Item);
            cart.catalog = catalog;
            // setState(() {});
          }
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              context.theme.buttonColor,
            ),
            shape: MaterialStateProperty.all(
              const StadiumBorder(),
            )),
        child: isInCart
            ? const Icon(Icons.done)
            : const Icon(CupertinoIcons.cart_badge_plus)
        //Icons.add_shopping_cart_outlined)
        //"Add to cart".text.make(),
        );
  }
}
