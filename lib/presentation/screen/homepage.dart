import 'package:bmiapp/presentation/screen/resultPage.dart';
import 'package:bmiapp/presentation/widgets/bottomButton.dart';
import 'package:bmiapp/presentation/widgets/commonCard.dart';
import 'package:bmiapp/presentation/widgets/genderCard.dart';
import 'package:bmiapp/presentation/widgets/roundButton.dart';
import 'package:bmiapp/res/brain.dart';
import 'package:bmiapp/res/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class homePage extends StatefulWidget {
  homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Gender? selectedGender;
  int height = 180;

  int weight = 60;

  int age = 20;
  @override
  Widget build(BuildContext context) {
    UiStuff uiColor = UiStuff();
    return Scaffold(
      backgroundColor: uiColor.kInactiveCardColour,
      appBar: AppBar(
        backgroundColor: uiColor.kInactiveCardColour,
        centerTitle: true,
        title: Text(
          'BMI',
          style: TextStyle(fontSize: 40),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: commonCard(
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          color: selectedGender == Gender.male
                              ? uiColor.kActiveCardColour
                              : uiColor.kInactiveCardColour,
                          cardChild: GenderCard(
                              gender: 'MALE', genderIcon: uiColor.maleIcon),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: commonCard(
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                          color: selectedGender == Gender.female
                              ? uiColor.kActiveCardColour
                              : uiColor.kInactiveCardColour,
                          cardChild: GenderCard(
                              gender: 'FEMALE', genderIcon: uiColor.femaleIcon),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: commonCard(
                    color: uiColor.kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(fontSize: 27, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style:
                                  TextStyle(fontSize: 80, color: Colors.white),
                            ),
                            Text(
                              'CM',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFF8D8E98),
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: commonCard(
                            color: uiColor.kActiveCardColour,
                            cardChild: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'WEIGHT',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                    Text(
                                      weight.toString(),
                                      style: TextStyle(
                                          fontSize: 80, color: Colors.white),
                                    ),
                                    Row(
                                      children: [
                                        RoundIconButton(
                                            icon: FontAwesomeIcons.minus,
                                            onPressed: () {
                                              if (weight > 0) {
                                                --weight;
                                              }

                                              setState(() {});
                                            }),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        RoundIconButton(
                                            icon: FontAwesomeIcons.plus,
                                            onPressed: () {
                                              if (weight >= 0) {
                                                ++weight;
                                              }
                                              setState(() {});
                                            }),
                                        SizedBox(
                                          width: 10.0,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ))),
                    Expanded(
                        child: commonCard(
                            color: uiColor.kActiveCardColour,
                            cardChild: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'AGE',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                    Text(
                                      age.toString(),
                                      style: TextStyle(
                                          fontSize: 80, color: Colors.white),
                                    ),
                                    Row(
                                      children: [
                                        RoundIconButton(
                                            icon: FontAwesomeIcons.minus,
                                            onPressed: () {
                                              if (age > 1) {
                                                --age;
                                              }

                                              setState(() {});
                                            }),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        RoundIconButton(
                                            icon: FontAwesomeIcons.plus,
                                            onPressed: () {
                                              if (age >= 1) {
                                                ++age;
                                              }
                                              setState(() {});
                                            }),
                                        SizedBox(
                                          width: 10.0,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ))),
                  ],
                ),
                BottomButton(
                    onTap: () {
                      BmiCalc bmiCalc =
                          new BmiCalc(height: height, weight: weight);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultsPage(
                            bmiResult: bmiCalc.calculateBMI(),
                            resultText: bmiCalc.getResult(),
                            interpretation: bmiCalc.getInterpretation(),
                          ),
                        ),
                      );
                    },
                    buttonTitle: 'CALCULATE')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
