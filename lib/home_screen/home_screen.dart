import 'package:counter_provider/home_screen/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  HomeProvider? providerT;
  HomeProvider? providerF;

  // @override
  // void initState() {
  //
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {

    providerT = Provider.of<HomeProvider>(context,listen: true);
    providerF = Provider.of<HomeProvider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Counter"),
        backgroundColor: Color(0xffB3B6B7),
        toolbarHeight: 40,
        actions: [
          IconButton(
            icon: Icon(Icons.restart_alt),
            onPressed: () {
              Provider.of<HomeProvider>(context,listen:  false).reset();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50),
                child: Text("${providerT!.i}",style: TextStyle(fontSize: 30),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xffB3B6B7),
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Center(child: Text("+",style: TextStyle(fontSize: 28))),
                      ),
                      onTap: () {
                        providerF!.addition();
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffB3B6B7),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Center(child: Text("-",style: TextStyle(fontSize: 28))),
                      ),
                      onTap: () {
                        providerF!.subtraction();
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffB3B6B7),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Center(child: Text("2+",style: TextStyle(fontSize: 28))),
                      ),
                      onTap: () {
                        providerF!.addition2();
                      },
                    ),
        
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffB3B6B7),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Center(child: Text("3+",style: TextStyle(fontSize: 28))),
                      ),
                      onTap: () {
                        providerF!.addition3();
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffB3B6B7),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Center(child: Text("4+",style: TextStyle(fontSize: 28))),
                      ),
                      onTap: () {
                        providerF!.addition4();
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffB3B6B7),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Center(child: Text("2*",style: TextStyle(fontSize: 28))),
                      ),
                      onTap: () {
                        providerF!.multiplication2();
                      },
                    ),
        
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffB3B6B7),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Center(child: Text("3*",style: TextStyle(fontSize: 28))),
                      ),
                      onTap: () {
                        providerF!.multiplication3();
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffB3B6B7),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Center(child: Text("4*",style: TextStyle(fontSize: 28))),
                      ),
                      onTap: () {
                        providerF!.multiplication4();
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
