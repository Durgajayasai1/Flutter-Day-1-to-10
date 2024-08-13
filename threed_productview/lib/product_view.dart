import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:o3d/o3d.dart';
import 'package:threed_cartview/components/specifications.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  // late final WebViewController _controller;

  O3DController controller = O3DController();

  @override
  // void initState() {
  //   super.initState();
  //   _controller = WebViewController()
  //     ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //     ..loadRequest(Uri.parse(
  //         'https://app.vectary.com/p/1C5F7UvyFy0pnlxoAJc3wc')); // Set your desired URL
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "3D Product View",
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Iconsax.bag_happy,
              color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Add to cart",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          // SizedBox(
          //   height: 400,
          //   width: double.infinity,
          //   child: WebViewWidget(
          //       controller:
          //           _controller), // Ensure this is correct for your version
          // ),
          O3D.asset(
              controller: controller,
              cameraControls: true,
              src: "assets/gaming_laptop.glb"),
          SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "MSI Gaming Laptop",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Specifications(
                  icon: Icons.star,
                  text: "15.6 Inch Full HD , 144Hz 45%NTSC IPS-Level"),
              const Specifications(
                  icon: Icons.star, text: "Lightning Fast and Smooth Display"),
              const Specifications(icon: Icons.star, text: "High Perfomance"),
              const Specifications(
                  icon: Icons.star, text: "Intel Core i7 Processor (12th Gen)"),
              const Specifications(icon: Icons.star, text: "8GB DDR4 RAM"),
            ],
          ))
        ],
      ),
    );
  }
}
