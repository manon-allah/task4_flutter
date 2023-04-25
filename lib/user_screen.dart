import 'package:flutter/material.dart';
class UserModel{
  final String admin;
  final String type;
  final double distance;
  final double rate;
  UserModel({
   required this.admin,
   required this.type,
   required this.distance,
   required this.rate,
});
}
class UserScreen extends StatelessWidget {
  List<UserModel> users=[
    UserModel(
        admin: 'Admin',
        type: 'BMW',
        distance: 5.15,
        rate: 5.4
    ),
    UserModel(
        admin: 'Admin',
        type: 'Lancer',
        distance: 10.5,
        rate: 4),
    UserModel(
        admin: 'Admin',
        type: 'BMW',
        distance: 5.15,
        rate: 5.4
    ),
    UserModel(
        admin: 'Admin',
        type: 'Lancer',
        distance: 10.5,
        rate: 4),
    UserModel(
        admin: 'Admin',
        type: 'BMW',
        distance: 5.15,
        rate: 5.4
    ),
    UserModel(
        admin: 'Admin',
        type: 'Lancer',
        distance: 10.5,
        rate: 4),
    UserModel(
        admin: 'Admin',
        type: 'BMW',
        distance: 5.15,
        rate: 5.4
    ),
    UserModel(
        admin: 'Admin',
        type: 'Lancer',
        distance: 10.5,
        rate: 4),
    UserModel(
        admin: 'Admin',
        type: 'BMW',
        distance: 5.15,
        rate: 5.4
    ),
    UserModel(
        admin: 'Admin',
        type: 'Lancer',
        distance: 10.5,
        rate: 4),
    UserModel(
        admin: 'Admin',
        type: 'BMW',
        distance: 5.15,
        rate: 5.4
    ),
    UserModel(
        admin: 'Admin',
        type: 'Lancer',
        distance: 10.5,
        rate: 4),
    UserModel(
        admin: 'Admin',
        type: 'BMW',
        distance: 5.15,
        rate: 5.4
    ),
    UserModel(
        admin: 'Admin',
        type: 'Lancer',
        distance: 10.5,
        rate: 4),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title: Text('Private Car',
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 40,
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.settings_outlined,size: 40,color: Colors.grey[700],)),
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder:(context,index)=>buildUserItem(users[index]),
          separatorBuilder: (context,index)=>Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[700],
            ),
          ),
          itemCount: users.length),

    );
  }
  Widget buildUserItem(UserModel user)=> Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('lib/profile.jpg'),

        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${user.admin}',
              style: TextStyle(
                  fontSize: 25
              ),),
            Text('${user.type}',
              style: TextStyle(
                  fontSize: 25
              ),),
            Text('far from you ${user.distance} km',
              style: TextStyle(
                  fontSize: 25
              ),),
            Text('rate:${user.rate}',
              style: TextStyle(
                  fontSize: 25
              ),),
          ],
        )
      ],
    ),
  );
}
