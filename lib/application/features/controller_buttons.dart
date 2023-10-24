import 'package:flutter/material.dart';

void buttonPressed(state, context) {
  if (state.wasReset == true && state.wasIncremented == false) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Value was reset ..'),
        duration: Duration(milliseconds: 200),
      ),
    );
  } else if (state.wasIncremented == true) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Incremented ..'),
        duration: Duration(milliseconds: 200),
      ),
    );
  } else if (state.wasIncremented == false) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Decremented ..'),
      duration: Duration(milliseconds: 200),
    ));
  }
}
