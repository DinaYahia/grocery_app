import 'package:grocery_app/models/facebookModels/user_model.dart';

class PostModel {
  UserModel userModel;
  String imgURL;
  String postContent;
  int nofLikes;
  int nofcomments;
  String whatUserDid;
  String time;
  List<String> images;

  PostModel(
      {this.userModel,
      this.imgURL,
      this.postContent,
      this.nofLikes,
      this.nofcomments,
      this.whatUserDid,
      this.time,
      this.images});
}
