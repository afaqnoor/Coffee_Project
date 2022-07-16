import 'package:coffe_project/Screens/Cappuccino_Screen.dart';
import 'package:coffe_project/Screens/Chemex.dart';
import 'package:coffe_project/Screens/French_Press.dart';
import 'package:coffe_project/Screens/Latte_Screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  bool isFavourite = false;
  bool Favorite = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
            children: [
            Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'Assets/Images/Coffe-1.jpg',
                      fit: BoxFit.cover,
                      color: Colors.black38,
                      colorBlendMode: BlendMode.darken,
                      filterQuality: FilterQuality.high,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 50.0, left: 30, right: 30),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            child: ClipOval(
                              child: Image.asset(
                              'Assets/Images/circle.jpg',
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                             ),
                            ),
                          ),
                          const SizedBox(
                            width: 180,
                          ),
                          const Icon(
                            Icons.search_rounded,
                            color: Colors.brown,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 195.0,left: 20),
                      child: Text('Brewing Coffee',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                        ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240.0),
            child: Container(
              height: 540,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 10,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (ctx)=> ChemexPage(title: 'Chemax',),
                              ),
                            );
                          },
                          child: Container(
                            height: 230,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0,top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 25.0),
                                        child: ClipRRect(
                                          child: Image.asset('Assets/Images/1-coffee.png',
                                            fit: BoxFit.cover,
                                            height: 110,
                                          ),
                                        ),
                                      ),
                                       Positioned(
                                        top: 5,
                                          right: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 58.0,bottom: 40),
                                            child: IconButton(
                                                icon: Icon(Icons.favorite,
                                                size: 25,
                                                  color: isFavourite
                                                      ? Colors.red
                                                      : const Color.fromARGB(255, 114, 113, 113),
                                                ),
                                              onPressed: (){
                                                  setState((){
                                                    isFavourite = ! isFavourite;
                                                  });
                                              },
                                      ),
                                          ),
                                       ),
                                    ],
                                  ),
                                 const SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    children: const [
                                       Text('Chemex',
                                      style:TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.white
                                      ),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Text('\$15',
                                      style: TextStyle(
                                       fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                 const Text('Try Coffee From Keniya Ethiopia',
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (ctx)=>FrenchPress(title: 'French Press'),
                            ),
                            );
                          },
                          child: Container(
                            height: 230,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20.0),
                                        child: ClipRRect(
                                          child: Image.asset('Assets/Images/3-coffee.png',
                                          fit: BoxFit.cover,
                                          height: 150,
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        height: 80,
                                        right: -10,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 18.0),
                                          child: Icon(Icons.favorite,
                                          size: 23,
                                          color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                     Row(
                                      children: const [
                                        Text('French Press',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('\$20',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text('Try Coffee From Keniya Ethiopia',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('Espersso',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap : (){
                           Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Latte(title: 'Latte',),
                           ),
                           );
                          },
                          child: Container(
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 20.0),
                                          child: Image.asset('Assets/Images/cup-2-removebg-preview.png',
                                          fit: BoxFit.cover,
                                            height: 110,
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        height: 80,
                                        right: 10,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 1.0),
                                          child: Icon(Icons.favorite_border_outlined,
                                            color: Colors.white,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: const [
                                      Text('Latte',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white
                                        ),
                                      ),
                                      SizedBox(
                                        width: 45,
                                      ),
                                      Text('\$10',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20
                                      ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text('Espresso steamed milk and lots foam'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=> Cappuccino(title: 'Cappuccino',),
                            ),
                            );
                          },
                          child: Container(
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 17.0),
                                      child: Center(
                                        child: ClipRRect(
                                          child:   Image.asset('Assets/Images/cup-1-removebg-preview.png',
                                            fit: BoxFit.cover,
                                            height: 100,
                                           ),
                                          ),
                                      ),
                                    ),
                                      const Positioned(
                                        height: 100,
                                          right: 1,
                                          child:Padding(
                                            padding: EdgeInsets.only(right: 10.0),
                                            child: Icon(Icons.favorite_border_outlined,
                                              color: Colors.white),
                                          ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: const [
                                      Text('Cappuccino',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.white,
                                       ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('\$8',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text('Espresso steamed milk and lots foam',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
