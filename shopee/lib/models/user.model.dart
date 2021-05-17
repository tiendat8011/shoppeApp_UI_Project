class UserModel {
  String uid;
  String name;
  String surname;
  String phone;
  String address;
  String avatar;

  UserModel(
      {this.uid,
        this.name,
        this.surname,
        this.phone,
        this.address,
        this.avatar});

  UserModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    name = json['name'];
    surname = json['surname'];
    phone = json['phone'];
    address = json['address'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['avatar'] = this.avatar;
    return data;
  }
}
