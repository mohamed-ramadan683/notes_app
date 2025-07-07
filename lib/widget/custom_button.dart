import 'package:flutter/material.dart';

import 'package:second/widget/constants.dart';

class CustomButton extends StatelessWidget {
const  CustomButton({super.key, this.ontap, this.isloading = false});
  final void Function()? ontap;
 final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kprimarycolor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isloading  ?CircularProgressIndicator(
            color: Colors.black,
          ) : Text(
            'add',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
