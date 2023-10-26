import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_and_cubit/application/cubit/app_cubit_states.dart';
import 'package:geolocator/geolocator.dart';

import '../../../application/cubit/app_cubit.dart';
import '../../../application/features/controller_buttons.dart';
import '../../../data/dataproviders/goelocator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // this is how we can access cubit /////////////
    final cubit = context.read<CounterCubit>();
    ////////////////////////////////////////////////
    // String defaultLocationVal = AppCubitStates.initial().message;

    return Scaffold(
      appBar: AppBar(
        title: const Text('The Counter App'),
        centerTitle: true,
        // elevation: 4.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8.0, 35.0, 8.0),
            // TODO : create a InkWell ? => snackBar
            child: BlocListener<CounterCubit, AppCubitStates>(
              listener: (context, state) {
                // TODO: implement listener
              },
              child: InkWell(
                onTap: () {
                  final value = AppCubitStates.initial().message;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(value),
                      duration: const Duration(milliseconds: 400),
                    ),
                  );
                },
                child: const Icon(
                  Icons.sunny,
                  size: 30.0,
                  color: Color.fromRGBO(255, 144, 93, 1),
                ),
              ),
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
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(183, 189, 255, 1),
                        Color.fromRGBO(255, 255, 255, 1),
                      ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BlocListener<CounterCubit, AppCubitStates>(
                      listener: (context, state) {
                        // TODO: implement listener
                      },
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                        onPressed: () {
                          // TODO: Need to extract this method ...
                          // void getData = cubit.getLocation();
                          // getData = locationProvider();
                          cubit.getLocation();
                          ////////////////////////////////////////////
                          print(cubit.state.location);
                        },
                        child: const Text(
                          'Get Location',
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ),
                    ),
                    BlocBuilder<CounterCubit, AppCubitStates>(
                        builder: (context, state) {
                      String textValue = state.location;
                      return Text(
                        textValue,
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.indigo,
                        ),
                      );
                    }),
                    Row(
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
