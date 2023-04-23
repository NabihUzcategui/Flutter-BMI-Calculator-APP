import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator_app/components/calucalator_brain.dart';
import 'package:flutter_bmi_calculator_app/pages/results_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/constants.dart';
import '../widges/widgets.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});


  @override
  State<InputPage> createState() => _InputPageState();
}



class _InputPageState extends State<InputPage> {

  Gender? selectedGender;
  int height = 170;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [

          Expanded(
            child: Row(
              children: [
                
                Expanded(
                  child: CardContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colorCard: selectedGender == Gender.male 
                    ? kActiveCardColor
                    : kInActiveCardColor, 
                    cardChild: const IconContent(
                      iconCard: FontAwesomeIcons.mars, 
                      label: 'MALE',
                    ),
                  ) ,  
                ),
                Expanded(
                  child: CardContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colorCard: selectedGender == Gender.female 
                    ? kActiveCardColor 
                    : kInActiveCardColor, 
                    cardChild: const IconContent(
                      iconCard: FontAwesomeIcons.venus, 
                      label: 'FEMALE',
                    ),
                  ) ,  
                ),
              ],
            ),
          ),

          Expanded(
            child: Row(
              children: [
                
                Expanded(
                  child: CardContainer(
                    colorCard: kActiveCardColor, 
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('HEIGHT', style:kLabelTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(height.toString(), style: kNumberTextStyle,),
                            const Text('cm', style: kLabelTextStyle,)
                          ],
                        ),
                        


                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: const RoundSliderThumbShape( enabledThumbRadius: 15.0),
                            thumbColor: kSliderActiveColor,
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: kSliderInactiveColor,
                            overlayColor: const Color(0x29eb1555),
                            overlayShape: const RoundSliderOverlayShape( overlayRadius: 30.0)
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 80.0,
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
                  ) ,  
                ),
              ],
            ),
          ),

          Expanded(
            child: Row(
              children: [
                
                 Expanded(
                  child: CardContainer(
                    colorCard: kActiveCardColor, 
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('WEIGHT', style: kLabelTextStyle,),
                        Text(weight.toString(), style: kNumberTextStyle,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),

                            const SizedBox( width: 15.0,),

                            RoundIconButton(
                              icon: FontAwesomeIcons.plus, 
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            
                          ],
                        )
                      ],
                    ), 
                    
                  ) ,  
                ),
                Expanded(
                  child: CardContainer(
                    colorCard: kActiveCardColor, 
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('AGE', style: kLabelTextStyle,),
                        Text(age.toString(), style: kNumberTextStyle,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus, 
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),

                            const SizedBox( width: 15.0,),

                            RoundIconButton(
                              icon: FontAwesomeIcons.plus, 
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            
                          ],
                        )
                      ],
                    ), 
                  ) ,  
                ),
              ],
            ),
          ),

          BottomButton(
            buttontitle: 'CALCULATE', 
            onTap: () {

              CalculatorBrain calc = CalculatorBrain(height, weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                bmiResult: calc.calculatedBMI(),
                resultText: calc.getResult(),
                interpretation: calc.getInterpretation(),
              )));
            },
          ),
          
        ],
      ),
    );
  }
}









