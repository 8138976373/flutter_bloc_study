import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';
import '../../services/routing_service.dart';
import '../../theme/theme.dart';
import '../../utils/di/injection.dart';
import 'texts.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: TextTile(
              text: "Tom Cooper",
              color: white,
            ),
            accountEmail: TextTile(
              text: "View profile",
              color: white,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const TextTile(
              text: "Home",
            ),
            onTap: () {
              getIt<RoutingService>().pushNamed(context, AppRoutes.home);
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.newspaper),
          //   title: const  TextTile(
          // text:"Class"),
          //   onTap: () {
          //     getIt<RoutingService>().pushNamed(context, AppRoutes.addPlayer);
          //   },
          // ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const TextTile(text: "Calendar"),
            onTap: () {},
          ),
          // ListTile(
          //   leading: const Icon(Icons.school),
          //   title: const  TextTile(
          // text:"Student Education Portal"),
          //   onTap: () {},
          // ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet),
            title: const TextTile(text: "Finance"),
            onTap: () {},
          ),
          // ListTile(
          //   leading: const Icon(Icons.file_copy),
          //   title: const  TextTile(
          // text:"Forms"),
          //   onTap: () {},
          // ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const TextTile(text: "Contact"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const TextTile(text: "Notifications"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const TextTile(text: "Logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
