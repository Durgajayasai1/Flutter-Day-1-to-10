import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Popular Items",
                style: GoogleFonts.poppins(
                    color: const Color(0xff081422),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "556 items",
                style: GoogleFonts.poppins(color: Colors.grey[600]),
              ),
              trailing: const Icon(
                Iconsax.search_normal,
                color: Color(0xff081422),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xff081422),
                          borderRadius: BorderRadius.circular(18)),
                      child: Text(
                        "View all",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff081422), width: 1),
                          borderRadius: BorderRadius.circular(18)),
                      child: Text(
                        "TShirts",
                        style:
                            GoogleFonts.poppins(color: const Color(0xff081422)),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff081422), width: 1),
                          borderRadius: BorderRadius.circular(18)),
                      child: Text(
                        "Skirts",
                        style:
                            GoogleFonts.poppins(color: const Color(0xff081422)),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff081422), width: 1),
                          borderRadius: BorderRadius.circular(18)),
                      child: Text(
                        "Shoes",
                        style:
                            GoogleFonts.poppins(color: const Color(0xff081422)),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff081422), width: 1),
                          borderRadius: BorderRadius.circular(18)),
                      child: Text(
                        "Trousers",
                        style:
                            GoogleFonts.poppins(color: const Color(0xff081422)),
                      ),
                    ),
                    // const SizedBox(
                    //   width: 5,
                    // ),
                    // Container(
                    //   padding: const EdgeInsets.all(10),
                    //   decoration: BoxDecoration(
                    //       border: Border.all(
                    //           color: const Color(0xff081422), width: 1),
                    //       borderRadius: BorderRadius.circular(18)),
                    //   child: Text(
                    //     "Tops",
                    //     style:
                    //         GoogleFonts.poppins(color: const Color(0xff081422)),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Iconsax.filter,
                        color: Color(0xffd1341f),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Filters",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff081422),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Iconsax.sort,
                        color: Color(0xffd1341f),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Sort",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff081422),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GridView.count(
              childAspectRatio: 0.68,
              crossAxisCount: 2,
              // it disable the scroll funcionality of gridview
              // then it will scroll in list view of home page
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                for (int i = 1; i < 5; i++)
                  Container(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 10),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                        // color: const Color(0xff081422),
                        border: Border.all(
                            color: const Color(0xff081422), width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "-30%",
                                style: GoogleFonts.poppins(
                                    color: const Color(0xffd1341f),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Icon(
                              Iconsax.heart,
                              color: Color(0xffd1341f),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/images/$i.png",
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Product Name",
                            style: GoogleFonts.poppins(
                                color: const Color(0xffd1341f),
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Product Description",
                            style: GoogleFonts.poppins(
                                color: const Color(0xff081422)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$55",
                                style: GoogleFonts.poppins(
                                    color: const Color(0xffd1341f),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Icon(
                                Iconsax.shopping_cart,
                                size: 20,
                                color: Color(0xff081422),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
