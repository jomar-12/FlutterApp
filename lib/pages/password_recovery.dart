import 'package:demoproject/services/hello_world.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordRecovery extends StatelessWidget {
  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.amber));

    HelloWorld service = HelloWorld();

    service.getHelloWorld();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text('PASSWORD',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.1)),
                  SizedBox(height: 5),
                  Text('RECOVERY',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.1)),
                ],
              ),
              Image.asset(
                'images/bomb.png',
                width: 230,
                height: 230,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(30)),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(color: Colors.grey.shade900, fontSize: 22),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Icon(
                          Icons.email,
                          size: 35,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(20),
                      border: InputBorder.none),
                ),
              ),
              Text(
                  'Lorem ipsum dolor sit amet, consecteteur adipiscigin elit. Ut pretium preium tempor',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16,
                      height: 1.5,
                      letterSpacing: 1.2),
                  textAlign: TextAlign.center),
              TextButton(
                  onPressed: () {},
                  child: const Text('Recover',
                      style: TextStyle(fontSize: 26, letterSpacing: 1.2)),
                  style: TextButton.styleFrom(
                    minimumSize: const Size(230, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.white,
                    backgroundColor: const Color.fromRGBO(41, 121, 255, 1),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
