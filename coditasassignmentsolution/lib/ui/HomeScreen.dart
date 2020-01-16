import 'package:coditasassignmentsolution/providers/usersprovider.dart';
import 'package:coditasassignmentsolution/widgets/user_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    //region example 2 with Model Class value

    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: FutureBuilder(
        future: UsersProvider.fetchAndSetUsers(),
        builder: (ctx, dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            if (dataSnapshot.error != null) {
              // ...
              // Do error handling stuff
              return Center(
                child: Text('An error occurred!'),
              );
            } else {
              return ListView.builder(
                itemCount: dataSnapshot.data.length,
                itemBuilder: (ctx, i) =>
                    UserItem(dataSnapshot.data[i], mediaQueryData),
              );
            }
          }
        },
      ),
    );

    //endregion
  }
}
