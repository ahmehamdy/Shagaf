import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shagaf2/core/constants/colors.dart';
import 'package:shagaf2/core/functions/navigate.dart';
import 'package:shagaf2/features/shagaf/data/repositories/onboardinglist.dart';
import 'package:shagaf2/features/shagaf/presentation/bloc/shagaf_bloc.dart';
import 'package:shagaf2/features/shagaf/presentation/pages/login.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';

class Mypageview extends StatelessWidget {
  const Mypageview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<ShagafBloc, ShagafState>(
      builder: (context, state) {
        return PageView.builder(
            controller: context.read<ShagafBloc>().pageController,
            onPageChanged: (value) {
              context.read<ShagafBloc>().add(changeindexevent(value));
            },
            itemCount: onboardinglist.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                      TextButton(
                           onPressed: () {
                             navigate(context, () => Login());
                           },
                           child: Mytext(
                               textdata: "Skip",
                               size: size.width / 23,
                               color: white,
                               fontWeight: null))
                     ],
                   ),
                   SizedBox(
                     height: size.width / 9.8,
                   ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(onboardinglist[index].image),
                        height: size.height / 2.2,
                        width: size.width / 1.1,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: Mytext(
                          textdata: onboardinglist[index].title,
                          size: size.width / 21,
                          color: white,
                          fontWeight: null)),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Mytext(
                        textdata: onboardinglist[index].description,
                        size: size.width / 24,
                        color: const Color(0xffFFC100),
                        fontWeight: null),
                  )
                ],
              );
            });
      },
    );
  }
}
