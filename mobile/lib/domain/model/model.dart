class Authentication {
  String? id;
  String? name;
  String? phone;
  String? email;

  Authentication(this.id, this.name, this.email, this.phone);
}

class DeviceInfo {
  String name;
  String identifier;
  String version;

  DeviceInfo(this.name, this.identifier, this.version);
}

class Service {
  int id;
  String title;
  String image;

  Service(this.id, this.title, this.image);
}
