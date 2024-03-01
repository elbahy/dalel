import 'package:dalel/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:dalel/features/profile/presentation/cubit/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProfileCubit()..getProfile(),
        child: BlocConsumer<ProfileCubit, ProfileState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Scaffold(
                  body: Center(child: Text(context.read<ProfileCubit>().name)));
            }));
  }
}
