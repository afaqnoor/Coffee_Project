import 'package:coffe_project/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class FrenchPress extends StatefulWidget {
   FrenchPress({Key? key, required this.title}) : super(key: key);

  String title;

  @override
  State<FrenchPress> createState() => _FrenchPressState();
}

class _FrenchPressState extends State<FrenchPress> {

  int _itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 300.0),
              child: Container(
                width: double.infinity,
                color: Colors.brown,
                child: Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(
                          'Brewing',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(
                          'French Press',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              height: 50,
                              width: 120,
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.orangeAccent, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      _itemCount != 0? IconButton(
                                        icon: const Icon(Icons.remove),onPressed: () =>setState(()=>_itemCount--),
                                        color: Colors.white,
                                      ) :new Container(),
                                      Text(_itemCount.toString()),
                                      IconButton(
                                        icon: const Icon(Icons.add),onPressed:() =>setState(()=>_itemCount++),
                                        color: Colors.white,)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 120,
                          ),
                          const Text(
                            '\$20',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 25,
                              color: Colors.orangeAccent,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 18.0, right: 18),
                        child: Text(
                          'Set decoration property with BoxDecoration() object. Set the border property of BoxDecoration() object, with required color and width as per your applications specifications.',
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Row(
                          children: const [
                            Text(
                              'Volume  : ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              '  32oz',
                              style: TextStyle(
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Container(
                        height: 75,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Order Now',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 340,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(80),
                ),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    child: Image.asset(
                      'Assets/Images/FrenchPage.jpg',
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                      // color: Colors.black45,
                      // colorBlendMode: BlendMode.darken,
                      // filterQuality: FilterQuality.high,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45.0, left: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => HomeScreen(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.brown,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
