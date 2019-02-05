import 'package:first_try/data/network/model/random_user.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UserListItem extends ListTile {
  UserListItem(RandomUser user)
      : super(
            title: Text(user.first_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            subtitle: Text(user.email),
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: CachedNetworkImage(
                  placeholder: Icon(
                    Icons.account_circle,
                    size: 48.0,
                  ),
                  imageUrl: user.picture,
                )));
}
