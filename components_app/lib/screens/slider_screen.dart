import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 100;
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          title: Text("Sliders & Checks"),
        ),
        body: Column(
          children: [
            Slider(
              activeColor: AppTheme.primary,
              value: sliderValue,
              onChanged: isActive
                  ? (value) {
                      sliderValue = value;
                      print(value);
                      setState(() {});
                    }
                  : null,
              min: 50,
              max: 400,
            ),
            Checkbox(
                activeColor: AppTheme.primary,
                value: isActive,
                onChanged: (value) {
                  isActive = value ?? true;
                  setState(() {});
                }),
            CheckboxListTile(
                title: Text("Activar Slider"),
                activeColor: AppTheme.primary,
                value: isActive,
                onChanged: (value) {
                  isActive = value ?? true;
                  setState(() {});
                }),
            Switch.adaptive(
                activeColor: AppTheme.primary,
                value: isActive,
                onChanged: (value) {
                  isActive = value ?? true;
                  setState(() {});
                }),
            SwitchListTile.adaptive(
                title: Text("Activar Slider"),
                activeColor: AppTheme.primary,
                value: isActive,
                onChanged: (value) {
                  isActive = value ?? true;
                  setState(() {});
                }),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbLPZYoBzFWRDEaruUBDIjihjeDDIYEcntqA&usqp=CAU',
                  ),
                  fit: BoxFit.cover,
                  width: sliderValue,
                ),
              ),
            )
          ],
        ));
  }
}
