import 'package:flutter/material.dart';
import 'package:tas_mobile/pages/details.dart';
import 'package:tas_mobile/pages/order.dart';
import 'package:tas_mobile/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool horror = false, romance = false, comedy = false, sport = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 50.0,
            left: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello Aditya,", style: AppWidget.boldTextFeildStyle()),
                  Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Order()));
                      },
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text("NekoBoy Media", style: AppWidget.headlineTextFeildStyle()),
              Text("Discover and Get Great Manga",
                  style: AppWidget.lightTextFeildStyle()),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: showItem(),
              ),
              const SizedBox(
                height: 30.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Details()));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/JJKVol1.jpg",
                                  height: 290,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Manga Jujutsu Kaisen Vol.1",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Gege Akutami",
                                  style: AppWidget.lightTextFeildStyle(),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Rp. 43.000",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/OPVol103.jpg",
                                height: 290,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Manga One Piece Vol.103",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Eiichiro Oda",
                                style: AppWidget.lightTextFeildStyle(),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Rp.50.000",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/OPMVol15.jpg",
                                height: 290,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Manga One Punch Man Vol.15",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "One & Yusuke Murata",
                                style: AppWidget.lightTextFeildStyle(),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Rp.25.000",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/BLVol19.jpg",
                          height: 170,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Manga Black Clover Vol.19",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Yuki Tabata",
                                  style: AppWidget.lightTextFeildStyle(),
                                ),
                              ),
                              const SizedBox(
                                height: 75.0,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Rp.40.000",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 85.0,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildCategory("Supernatural", "images/supernatural.png", horror),
        buildCategory("Romance", "images/romance.png", romance),
        buildCategory("Comedy", "images/laugh.png", comedy),
        buildCategory("Sport", "images/sport.png", sport),
      ],
    );
  }

  Widget buildCategory(String categoryName, String imagePath, bool isSelected) {
    return GestureDetector(
      onTap: () {
        // Update category selection
        horror = categoryName == "Supernatural";
        romance = categoryName == "Romance";
        comedy = categoryName == "Comedy";
        sport = categoryName == "Sport";
        setState(() {});
      },
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.black12 : Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                height: 50,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 5),
              Text(
                categoryName,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
