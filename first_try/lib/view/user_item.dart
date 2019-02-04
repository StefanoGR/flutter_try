import 'package:first_try/data/network/model/random_user.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UserListItem extends ListTile {

  UserListItem(RandomUser user) :
        super(
          title : Text(user.first_name),
          subtitle: Text(user.last_name),
          leading: CachedNetworkImage(
            placeholder: Icon(Icons.account_box),
            imageUrl: user.picture,
          )
      );

}