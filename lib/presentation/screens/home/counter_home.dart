import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_and_cubit/application/cubit/app_cubit_states.dart';

import '../../../application/cubit/app_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

  @override
  Widget build(BuildContext context) {
    // this is how we can access cubit /////////////
    final cubit = context.read<CounterCubit>();
    ////////////////////////////////////////////////
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi App'),
        centerTitle: true,
        elevation: 4.0,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8.0, 35.0, 8.0),
            child: Icon(
              Icons.sunny,
              color: Color.fromRGBO(255, 144, 93, 1),
            ),
          ),
        ],
      ),
      body: BlocListener<CounterCubit, AppCubitStates>(
        listener: (context, state) {
          // TODO: implement listener
          buttonPressed(state, context);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.97,
                height: MediaQuery.of(context).size.height * 0.70,
                // height: double.infinity,
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(183, 189, 255, 1)),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      '--->',
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    BlocBuilder<CounterCubit, AppCubitStates>(
                      builder: (context, state) {
                        int value = state.counterValue;
                        return Text(
                          '$value',
                          style: const TextStyle(
                              fontSize: 27.0, color: Colors.green),
                        );
                      },
                    ),
                    const SizedBox(width: 15.0),
                    const Text(
                      '<---',
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: () => cubit.decrementValue(),
                      child: const Icon(Icons.remove),
                    ),
                    FloatingActionButton(
                      onPressed: () => cubit.resetValue(),
                      child: const Icon(Icons.restart_alt_outlined),
                    ),
                    FloatingActionButton(
                      onPressed: () => cubit.incrementValue(),
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
