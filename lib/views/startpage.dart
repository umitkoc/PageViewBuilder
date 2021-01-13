import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnbook/controllers/pagecontroller.dart';

class StartPage extends StatelessWidget {
  // ignore: unused_field
  final _controllerpage = new PageControllers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[700],
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: _controllerpage.pagecontroller,
                onPageChanged: _controllerpage.selectpageindex,
                itemCount: _controllerpage.data.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network(
                          _controllerpage.data[index].imageName,
                          scale: 1.3,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          _controllerpage.data[index].text,
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 64.0),
                          child: Text(_controllerpage.data[index].description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              )),
                        )
                      ],
                    ),
                  );
                }),
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                children: List.generate(
                  _controllerpage.data.length,
                  (index) => Obx(
                    () {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: _controllerpage.selectpageindex.value == index
                              ? Colors.amberAccent
                              : Colors.blueGrey,
                          shape: BoxShape.circle,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: FloatingActionButton(
                autofocus: true,
                backgroundColor: Colors.amber,
                elevation: 1,
                child: Obx(() {
                  return Text(
                    _controllerpage.isLantPage ? "Start" : "Next",
                    style: TextStyle(color: Colors.black),
                  );
                }),
                onPressed: _controllerpage.forwardAction,
              ),
            )
          ],
        ),
      ),
    );
  }
}
