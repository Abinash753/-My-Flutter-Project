import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SimmerEffect extends StatefulWidget {
  const SimmerEffect({super.key});

  @override
  State<SimmerEffect> createState() => _SimmerEffectState();
}

class _SimmerEffectState extends State<SimmerEffect> {
  bool _isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height *1;
    // double width = MediaQuery.of(context).size.width *1;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Simmer Effect"),
          centerTitle: true,
        ),
        body: _isLoading ? _shimmerView() : _loadedView());
  }

  //
  Widget _loadedView() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 189, 186, 186),
              borderRadius: BorderRadius.circular(10),
            ),
            // height: 80,
            // width: 200,
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 60,
                  width: 60,
                  color: Colors.pink,
                ),
                //
                const SizedBox(
                  width: 10,
                ),
                //column
                const Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text("This is the title of the listview"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("This is the subtitle"),
                  ],
                )
              ],
            ),
          );
        }));
  }

  //
  Widget _shimmerView() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Container(
            //height: 80,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 189, 186, 186),
              borderRadius: BorderRadius.circular(10),
            ),
            //height: 80,
            //width: 180,
            margin: const EdgeInsets.all(10),
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 60,
                    width: 60,
                    color: Colors.pink,
                  ),
                  //
                  const SizedBox(
                    width: 10,
                  ),
                  //column
                  Column(
                    children: [
                      Container(
                        height: 15,
                        width: 200,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 12,
                        width: 150,
                        color: Colors.green,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        }));
  }
}
