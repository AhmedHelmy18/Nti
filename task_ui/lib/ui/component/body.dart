import 'package:flutter/material.dart';
import 'package:task_ui/ui/component/container_icon.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key, required this.onChangeColor});

  final VoidCallback onChangeColor;

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  int number = 0;

  void handleOperation(String operation) {
    setState(() {
      if (operation == "plus" || operation == "+") {
        number++;
      } else if (operation == "minus" || operation == "-") {
        number = number > 0 ? number - 1 : 0;
      } else if (operation == "clear") {
        number = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                "$number",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerIcon(
                icon: Icons.add,
                operation: "plus",
                onPressed: () => handleOperation("plus"),
              ),
              const SizedBox(width: 10),
              ContainerIcon(
                icon: Icons.remove,
                operation: "minus",
                onPressed: () => handleOperation("minus"),
              ),
              const SizedBox(width: 10),
              ContainerIcon(
                icon: Icons.restart_alt,
                operation: "clear",
                onPressed: () => handleOperation("clear"),
              ),
            ],
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(200, 50),
              backgroundColor: Colors.grey[500],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: widget.onChangeColor,
            child: const Text(
              "Change Color",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
