import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';

import '../person_class.dart';



class MasterDetails extends StatelessWidget {

  final Person personDetails;
  const MasterDetails({super.key, required this.personDetails});

  //this code is for go to contrack phone number if this is need for go to contrack number
  // getpermission()async{
  //   PhoneContact _phonecontact;
  //   await FlutterContactPicker.requestPermission();
  //   if(await FlutterContactPicker.hasPermission()){
  //     _phonecontact = await FlutterContactPicker.pickPhoneContact();
  //     if (_phonecontact!= true){
  //       if(_phonecontact.fullName!.isNotEmpty){
  //         return _phonecontact.fullName.toString();
  //       }
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  margin: const EdgeInsets.only(left: 40,right: 40,top: 30),
                  child: Image.asset("assets/${personDetails.image}",fit: BoxFit.cover,),
                ),
                const SizedBox(height: 20,),

                Text("Name: ${personDetails.name}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                Text("Designation : ${personDetails.designation}"),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.mail),
                    Text("email address : ${personDetails.email}"),
                  ],
                ),

                InkWell(
                    onTap: () async{
                      // getpermission();
                      FlutterPhoneDirectCaller.callNumber(personDetails.phoneNo);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.call),
                        Text("Contact : ${personDetails.phoneNo}"),
                      ],
                    )),


                const SizedBox(height: 30,),
                Text("Story: ${personDetails.name}' Portuguese footballer Cristiano Ronaldo dos Santos Aveiro GOIH ComM plays forward for Al Nassr,"
                    "a Saudi Arabian team, and serves as the team’s captain."
                    " Ronaldo was born in Funchal, Portugal, on February 5, 1985, is considered as one of the all times great players."
                    "He has collected five Ballon d’Or awards, which is the most of any male player from Europe.")
              ],
            ),
          ),
        )
    );
  }
}