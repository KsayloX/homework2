import 'package:flutter/material.dart';
import 'package:mouse/util/mouse_title.dart';
import 'package:mouse/util/mouse_type.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage>  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of mouse type
  final List mouseType = [
    ['Logitech', false],
    ['Razer', true],
    ['Lamzu', false],
    ['SteelSeries', false],
  ];


  // Обработчик выбора типа мыши
  void mouseTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < mouseType.length; i++) {
        mouseType[i][1] = false;
      }
      mouseType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person, color: Colors.green),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.green),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          // Текст
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Лучшие игровые мыши!',
              style: GoogleFonts.bebasNeue(
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.green,
                ),
                hintText: 'Найти для себя...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mouseType.length,
              itemBuilder: (context, index) {
                return MouseType(
                  mouseType: mouseType[index][0],
                  isSelected: mouseType[index][1],
                  onTap: () {
                    mouseTypeSelected(index);
                  },
                );
              },
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                MouseTitle(
                  mouseImagePath: 'assets/images/logitech.png',
                  mouseName: 'Logitech',
                  mousePrice: '11.999',
                ),
                MouseTitle(
                  mouseImagePath: 'assets/images/lamzu.png',
                  mouseName: 'Lamzu',
                  mousePrice: '6.990',
                ),
                MouseTitle(
                  mouseImagePath: 'assets/images/razer.png',
                  mouseName: 'Razer',
                  mousePrice: '16.999',
                ),
                MouseTitle(
                  mouseImagePath: 'assets/images/steelseries.png',
                  mouseName: 'SteelSeries',
                  mousePrice: '2.999',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
