import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/Screens/chat_list_screen.dart';
import 'package:flutter_chat_app/Screens/create_new_chat_screen.dart';
import 'package:flutter_chat_app/Screens/current_user.dart';
import 'package:flutter_chat_app/dashboard/cubit/dashboard_cubit.dart';

class DashboardPage extends StatelessWidget {
  static const RuningScreenRoute = "dashbord_page";

  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          DashboardCubit cubit = context.read<DashboardCubit>();
          return Scaffold(
            body: PageView(
              controller: cubit.pageController,
              onPageChanged: cubit.onChangeTab,
              children: [
                ChatListPage(), // Navigate to NewChatPage
                NewChatPage(),
                UserDetailsPage(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.blue,
              currentIndex: cubit.currentIndex,
              onTap: cubit.onChangeTab,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chat_bubble),
                  label: "Chats",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.create),
                  label: "New Chat",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.profile_circled),
                  label: "Current User",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
