import 'package:calctr/components/my_button.dart';
import 'package:calctr/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_expressions/math_expressions.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_viewState();
}

class _home_viewState extends State<home_view> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [ 

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                      Align(
                      alignment: Alignment.bottomRight,
                      child: Text(userInput.toString(),style: const TextStyle(color: Colors.white),)),
                      SizedBox(height: 10,),
                      Text(answer.toString(),style: const TextStyle(color: Colors.white),),
                  ],),
            ),
          ),

            Expanded(
              flex: 2,
              child: Column(
                children: [
            
                  
              Row(
                children: [
                       MyButton(title: 'AC',onPress: () {

                       userInput = '';
                       answer = '';
                       setState(() {
                         
                       });
              
                       },),
                       MyButton(title: '+/-', onPress: (){
                        userInput = '+/-';
                        setState(() {
                          
                        });
                       },),

                      MyButton(title: '%', onPress: (){
                      // userInput = userInput + '%';
                      userInput  += '%';
                      setState(() {
                          
                        });
                       },),
                      MyButton(title: '/',color: Color(0xffffa00a),onPress: (){
                      userInput += '/';
                      setState(() {
                          
                        });
                       },),
                ],),
            
                Row(
                children: [
                      MyButton(title: '7',onPress: () {
                      userInput += '7';
                      setState(() {
                          
                        });
                       },),
                      MyButton(title: '8', onPress: (){
                      userInput += '8';
                      setState(() {
                          
                        });
                       },),
                      MyButton(title: '9', onPress: (){
                      userInput = userInput + '9';
                        // userInput += '9';   both same way
                      setState(() {
                          
                        });
                       },),
                      MyButton(title: 'x',color: Color(0xffffa00a),onPress: (){
                      userInput += 'x';
                      setState(() {
                         
                       });         
                       },),
                ],),
            
                Row(
                children: [
                       MyButton(title: '4',onPress: () {
                       userInput += '4';
                       setState(() {
                         
                       });
                       },),
                       MyButton(title: '5', onPress: (){
                        userInput += '5';
                        setState(() {
                          
                        });
                       },),
                       MyButton(title: '6', onPress: (){
                        userInput += '6';
                        setState(() {
                          
                        });
                       },),
                       MyButton(title: '-',color: Color(0xffffa00a),onPress: (){
                        userInput += '-';
                        setState(() {
                          
                        });
                       },),
                ],),
            
                Row(
                children: [
                       MyButton(title: '1',onPress: () {
                      userInput += '1';
                      setState(() {
                        
                      });
                       },),
                       MyButton(title: '2', onPress: (){
                        userInput += '2';
                        setState(() {
                          
                        });
                       },),
                       MyButton(title: '3', onPress: (){
                        userInput += '3';
                        setState(() {
                          
                        });
                       },),
                       MyButton(title: '+',color: Color(0xffffa00a),onPress: (){
                        userInput += '+';
                        setState(() {
                          
                        });
                       },),
                ],),
            
                Row(
                children: [
                       MyButton(title: '0',onPress: () {
                       userInput += '0';
                       setState(() {
                         
                       });
                       },),
                       MyButton(title: '-', onPress: (){
                        userInput += '-';
                        setState(() {
                          
                        });
                       },),
                       MyButton(title: 'DEL', onPress: (){
                        userInput = userInput.substring(0, userInput.length - 1);
                        setState(() {
                          
                        });
                       },),
                       MyButton(title: '=',color: const Color(0xffffa00a),onPress: (){
                        // userInput += '=';
                        equalpres();
                        setState(() {

                        });
                       },),
                ],),
                ],
              ),
            ),
            // Text("asif taj",style: headingtextstyle,),
            // Text("asif taj",style: TextStyle(fontSize: 20, color: Colors.pink),),
            
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Container(
            //     height: 40,
            //     decoration:  BoxDecoration(
            //     color: Colors.deepOrange,
            //     borderRadius: BorderRadius.circular(10)  
            //     ),
            //     child: const Center(child:  Text("Signup",style: headingtextstyle2,)),
            //   ),
            // ),

          
          ],
        ),
      )),
    );
  }

void equalpres()
{
  String finalUserInput = userInput.replaceAll('x', '*');
  Parser p = Parser();
  Expression expression = p.parse(finalUserInput);
  ContextModel contextModel = ContextModel();
  double eval = expression.evaluate(EvaluationType.REAL,  contextModel);
  answer = eval.toString();
}

}

