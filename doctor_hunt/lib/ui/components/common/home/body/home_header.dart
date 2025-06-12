import 'package:doctor_hunt/ui/components/common/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 180,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff00c182), Color(0xff00d9ac)],
            ),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 19, top: 40, right: 19),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              trailing: SizedBox(
                height: 60,
                width: 60,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Ellipse 8.png"),
                ),
              ),
              subtitle: Text(
                "Find Your Doctor",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              title: Text(
                "Hi Handwerker!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 20,
          right: 20,
          child: SearchTextField(hintText: "Search...."),
        ),
      ],
    );
  }
}
