import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shagaf2/features/shagaf/data/repositories/onboardinglist.dart';
import 'package:shagaf2/features/shagaf/presentation/bloc/shagaf_bloc.dart';

class Mylistgenerate extends StatelessWidget {
  const Mylistgenerate({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return BlocBuilder<ShagafBloc, ShagafState>(
      builder: (context, state) {
        int currentindex = 0;
        if (state is changeindexstate) {
          currentindex = state.index;
        }
        return Row(
          children: [
            ...List.generate(onboardinglist.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 13,
                    width: 13,
                    color: index ==
                             currentindex
                        ? const Color(0xffF04C29)
                        : Colors.red[300],
                  ),
                ),
              );
            })
          ],
        );
      },
    );
  }
}
