import 'package:flutter/material.dart';
import 'package:myapp/minor_screens/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:6,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)  => const SearchScreen()
                ),
              );
            },                
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue,width: 1.4),
                borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.search, 
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'What are you looking for?',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  
                  Container(
                    width: 75,
                    height: 32,
                    decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(25)),
                    child: const Center(
                      child: Text(
                        'Search', 
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.blue,
            indicatorWeight: 8,
            tabs: [
              RepeatedTab(label: 'Hair Color'),
              RepeatedTab(label: 'Mehandi'),
              RepeatedTab(label: 'c'),
              RepeatedTab(label: 'D'),
              RepeatedTab(label: 'E'),
              RepeatedTab(label: 'F'),              
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Hair color screen')),
            Center(child: Text('Mehandi screen')),
            Center(child: Text('C screen')),
            Center(child: Text('D screen')),
            Center(child: Text('E screen')),
            Center(child: Text('F screen'))
          ],
        ),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({
    super.key, 
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Tab(child: Text(label,  style: TextStyle
    (color: Colors.grey.shade600),),
    );
  }
}