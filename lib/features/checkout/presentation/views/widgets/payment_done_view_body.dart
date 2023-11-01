import 'package:flutter/material.dart';

class PaymentDoneViewBody extends StatelessWidget {
  const PaymentDoneViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Stack widget enable us to put widget on widget
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        //this code prevent clip
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          //this code for dash line
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 20 + 6,
            right: 20 + 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                children: List.generate(
                  20,
                  (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Container(
                        height: 3,
                        color: const Color(0xffB8B8B8),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //this code will put the circle in postion we want
          Positioned(
            left: -20,
            // MediaQuery will adjust the height depending on device screen height
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            // MediaQuery will adjust the height depending on device screen height
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: -40,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xFFD9D9D9),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  size: 45,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
