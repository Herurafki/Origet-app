import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:origet_app/model/produk.dart';
import 'package:origet_app/page/cartpage.dart';
import 'package:origet_app/widget/category.dart';
import 'package:origet_app/widget/produk.dart';
import 'package:origet_app/services/api_service.dart';
import 'akun.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ApiService apiService = ApiService();
  List<Produk> data = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchDataFromApi();
  }

  Future<void> fetchDataFromApi() async {
    try {
      final fetchedData = await apiService.fetchData();
      setState(() {
        data = fetchedData;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print("Error fetching data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildCarousel(),
                    buildGreetingSection(),
                    buildSearchBar(),
                    buildCategoriesSection(),
                    buildTopRatingSection(),
                    isLoading
                        ? Center(child: CircularProgressIndicator())
                        : buildProductsList(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildCarousel() {
    return Stack(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          child: CarouselSlider(
            items: [
              buildCarouselItem('assets/images/slider 1.png'),
              buildCarouselItem('assets/images/slider 2.jpg'),
              buildCarouselItem('assets/images/slider 3.jpg'),
              buildCarouselItem('assets/images/slider 4.jpg'),
            ],
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: false,
              aspectRatio: 16 / 9,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCarouselItem(String imagePath) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.black.withOpacity(0.3),
        BlendMode.darken,
      ),
      child: Image.asset(
        imagePath,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildGreetingSection() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/profil1.png"),
                  ),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Halo Heru, Selamat Datang !",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Inika',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Icon(
            Icons.notifications_active,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }

  Widget buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F7),
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          cursorHeight: 20,
          autofocus: false,
          decoration: InputDecoration(
            hintText: "Search What's New",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCategoriesSection() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: TextStyle(fontFamily: 'Inika', fontSize: 20),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Category(imagePath: "assets/logo/phone_logo.png", title: "Phone"),
              Category(imagePath: "assets/logo/tablet_logo.png", title: "Tablet"),
              Category(imagePath: "assets/logo/watch_logo.png", title: "Watch"),
              Category(imagePath: "assets/logo/headphone_logo.png", title: "Access"),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTopRatingSection() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
      child: Text(
        "Top On Rating",
        style: TextStyle(fontFamily: 'Inika', fontSize: 20),
      ),
    );
  }

  Widget buildProductsList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        var item = data[index];
        return CoffeShop2(
          produk: item,
        );
      },
    );
  }

  Widget buildBottomNavigationBar() {
    return NavigationBar(
      animationDuration: const Duration(seconds: 1),
      destinations: _navBarItems,
      onDestinationSelected: (int index) {
        if (index == indexOfCart) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartPage()),
          );
        }else if (index == indexOfProfile) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage()),
          );
        }
      },
    );
  }
}

const _navBarItems = [
  NavigationDestination(
    icon: Icon(Icons.home_outlined),
    selectedIcon: Icon(Icons.home_rounded),
    label: 'Home',
  ),
  NavigationDestination(
    icon: Icon(Icons.list_alt_outlined),
    selectedIcon: Icon(Icons.list_alt_rounded),
    label: 'Item',
  ),
  NavigationDestination(
    icon: Icon(Icons.shopping_bag_outlined),
    selectedIcon: Icon(Icons.shopping_bag),
    label: 'Cart',
  ),
  NavigationDestination(
    icon: Icon(Icons.person_outline_rounded),
    selectedIcon: Icon(Icons.person_rounded),
    label: 'Profile',
  ),
];

const indexOfCart = 2;
const indexOfProfile = 3;
