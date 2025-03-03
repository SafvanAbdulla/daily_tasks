import 'package:flutter/material.dart';

class CoffeeUi extends StatefulWidget {
  const CoffeeUi({super.key});

  @override
  State<CoffeeUi> createState() => _CoffeeUiState();
}

class _CoffeeUiState extends State<CoffeeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 300,
            left: 0,
            right: 0,
            child: Container(
              height: 650,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Calicut, Kerala',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            left: 20,
            right: 20,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        fillColor: Colors.orange,
                        filled: true,
                        hintText: "Search Coffee",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage('icons/settings.png'),
                          fit: BoxFit.fill)),
                )
              ],
            ),
          ),
          Positioned(
              top: 250,
              left: 150,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/coffe.png'),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    "BUY ONE GET \n   ONE FREE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
          Positioned(
              top: 500,
              left: 70,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/latte.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    'Latte\n2.50\$',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              )),
          Positioned(
              top: 500,
              right: 70,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/mocha.jpeg'),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    'Mocha\n5.50\$',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              )),
          Positioned(
              bottom: 150,
              left: 200,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/americano.webp'),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    'Americano\n1.50\$',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              )),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 231, 155),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.home,
                      size: 40,
                    ),
                    Icon(
                      Icons.favorite,
                      size: 40,
                    ),
                    Icon(
                      Icons.shopping_bag,
                      size: 40,
                    ),
                    Icon(
                      Icons.account_box,
                      size: 40,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
