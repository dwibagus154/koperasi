import 'package:flutter/material.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg-app.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Layanan',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              Expanded(
                  child: ListView(
                children: [
                  Container(
                    width: 128.0,
                    height: 128.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset('assets/images/female_profile.png')
                              .image,
                        )),
                  ),
                  Center(
                    child: Text(
                      'Dwi Bagus Ananta',
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
