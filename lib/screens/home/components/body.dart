import 'package:flutter/material.dart';
import 'package:forniture_app/services/fetchProducts.dart';
import 'package:forniture_app/shared/title_text.dart';
import 'package:forniture_app/services/fetchCategories.dart';
import 'package:forniture_app/size_config.dart';

import '../../../env.dart';
import 'categories.dart';
import 'recommand_products.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(
                title: "Categorias" + Env.value.baseUrl + 'aa',
              ),
            ),
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(
                      categories: snapshot.data,
                    )
                  : Center(
                      child: Image.asset("assets/ripple.gif"),
                    ),
            ),
            Divider(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(
                title: "Recomendados para você",
              ),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? RecommandProducts(products: snapshot.data)
                    : Center(
                        child: Image.asset("assets/ripple.gif"),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
