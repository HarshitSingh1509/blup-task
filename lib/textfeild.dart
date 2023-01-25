import 'package:flutter/material.dart';

class Fields extends StatefulWidget {
  Map<String, dynamic> position;
  Fields(this.position);

  @override
  State<Fields> createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {
  Map<String, dynamic> positions = {};
  @override
  void initState() {
    positions = widget.position;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: positions["y"],
      left: positions["x"],
      child: Draggable<int>(
        // Data is the value this Draggable stores.
        data: 10,
        feedback: Container(),
        onDragUpdate: (details) {
          setState(() {
            positions["x"] = details.localPosition.dx;
            positions["y"] = details.localPosition.dy;
          });
        },

        child: Container(
          height: 40,
          width: 150,
          child: const Center(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
