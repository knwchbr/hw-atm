import 'dart:io';

import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'Balance.dart';
import 'deposit.dart';


class registerscreen extends StatefulWidget {
  const registerscreen({ Key? key }) : super(key: key);

  @override
  _registerscreenState createState() => _registerscreenState();
}




class _registerscreenState extends State<registerscreen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _ID = TextEditingController();
  TextEditingController _GPA = TextEditingController();
  TextEditingController _Gradua = TextEditingController();
  TextEditingController _cer = TextEditingController();
  TextEditingController _deposit = TextEditingController();
  TextEditingController _widtdrawn = TextEditingController();
  String _choose1 = '' ;
  String _choose2 = '';
  String _choose3 = '';
  String _choose4 = '';
  double ba = 0;
  late String depo;
  
Widget buildUsername(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
         controller: _name,
         keyboardType: TextInputType.number,
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.account_circle,
             color: Color(0xff5ac18e),
           ),
           hintText: 'จำนวนเงินฝาก',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}

Widget buildEmail(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
         controller: _email,
         keyboardType: TextInputType.emailAddress,
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.email,
             color: Color(0xff5ac18e),
           ),
           hintText: 'email',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}
Widget buildID(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
   
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
         controller: _ID,
         keyboardType: TextInputType.number,  
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.lock,
             color: Color(0xff5ac18e),
           ),
           hintText: 'ID',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}
Widget buildCer(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
         controller: _cer,
         keyboardType: TextInputType.emailAddress,
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.school,
             color: Color(0xff5ac18e),
           ),
           
           hintText: 'วุฒิการศึกษา',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}
Widget buildGPA(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
   
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
        controller: _GPA,
        // obscureText: true,
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.grade,
             color: Color(0xff5ac18e),
           ),
           hintText: 'GPA',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}
Widget buildGradua(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
         controller: _Gradua,
         keyboardType: TextInputType.emailAddress,
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.school,
             color: Color(0xff5ac18e),
           ),
           
           hintText: 'จบการศึกษาจาก',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}
Widget buildLoginBtn() {
  return GestureDetector(
    onTap: () => print('Login Pressed') ,
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account ? ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500
            )
          ),
          TextSpan(
            text: 'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            )
          )
        ]
      ),
    ) 
  );
}


Widget buildBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      onPressed: (){setState(() {
             ba = (ba + double.parse(_deposit.text));
           });
         },
     
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      color: Colors.white,
      child: Text(
        'ฝากเงิน',
        style: TextStyle(
          color: Color(0xff5ac18e),
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),

      ),

  );
}

Widget buildBtn2(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      onPressed: (){
        setState(() {
             ba = (ba - double.parse(_deposit.text));
             if (ba < 0){
              throw Exception('fail to widtdrawn you not have enough money');
              AlertDialog alert = AlertDialog(
              title: Text("คุณมีเงินคงเหลือไม่เพียงพอ"),
              );
              showDialog(
                context: context,
                builder: (BuildContext context) {
                return alert;
                },
              );
          }else{
              print('ถอนเงินจากบัญชี');
            }
           });
         },


     
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      color: Colors.white,
      child: Text(
        'ถอนเงิน',
        style: TextStyle(
          color: Color(0xff5ac18e),
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),

      ),

  );
}

  Widget buildDepo(BuildContext context){
   return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
         controller: _deposit,
         keyboardType: TextInputType.number,
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.attach_money_sharp,
             color: Color(0xff5ac18e),
           ),
           hintText: 'จำนวนเงิน',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}

  Widget buildWidt(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
         controller: _widtdrawn,
         keyboardType: TextInputType.number,
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.attach_money_sharp,
             color: Color(0xff5ac18e),
           ),
           hintText: 'จำนวนเงินถอน',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}


  @override



  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Center(
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container( 
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration( 
                  gradient: LinearGradient( 
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x665ac18e),
                      Color(0x995ac18e),
                      Color(0xcc5ac18e),
                      Color(0xff5ac18e),
                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 80
                ),
  

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ATM', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
                    Container(
                       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                       height: 150,
                       width: 400,
                       padding: const EdgeInsets.all(20),
                    child: ListTile(
                    title: Text("Your Balance \n"),
                    subtitle: Text(ba.toString(),
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                    
                    ),
                  ),
                      color: Colors.white,
                      
                      ),

                  
                  

                    SizedBox(height: 10),
                    buildDepo(context),
                    SizedBox(height: 10),
                    buildBtn(context),

                    buildBtn2(context)
                  ],
                ),
              ),
              )],

          ),
        ),

      ),
      ),
    );
  }
}



