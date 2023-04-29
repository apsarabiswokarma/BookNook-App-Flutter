import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    context.theme.buttonColor,
                  ),
                  shape: MaterialStateProperty.all(
                    const StadiumBorder(),
                  )),
              child: "Add to cart".text.make(),
            ).wh(150, 50)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(
                catalog.id.toString(),
              ),
              child: Image.network(catalog.image),
            ).h32(context),
            //.p32(),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.bookName.text.xl3
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text
                        .textStyle(context.captionStyle)
                        .xl
                        .color(context.accentColor)
                        .make(),
                    10.heightBox,
                    "Clita diam dolor consetetur takimata et. prebum erat, lorem dolores voluptua dolor elitr. Magna sea et aliquyam."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p12()
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
