class Post {
  String head;
  String date;
  String story;
  int favorite;
  
  String? referenceId;

  static const collectionPost = 'posts';
  static const colHead = 'head';
  static const colDate = 'date';
  static const colStory = 'story';
  static const colFavorite = 'favorite';
  

  Post(
      {required this.head,
      required this.date,
      required this.story,
      required this.favorite,
      
      this.referenceId});

  Map<String, dynamic> toMap() {
    var mapData = <String, dynamic>{
      colHead: head,
      colDate: date,
      colStory: story,
      colFavorite: favorite,
      
    };
    return mapData;
  }

  Map<String, dynamic> toJson() {
    var jsonData = <String, dynamic>{
      colHead: head,
      colDate: date,
      colStory: story,
      colFavorite: favorite,
      
    };
    return jsonData;
  }
}

class Account {
  String name;
  String email;
  String profile;
  String? referenceId;

  static const collectionAccount = 'account';
  static const colName = 'name';
  static const colEmail = 'email';
  static const colProfile = 'profile';

  Account(
      {required this.name,
      required this.email,
      required this.profile,
      this.referenceId});

  Map<String, dynamic> toMap() {
    var mapData = <String, dynamic>{
      colName: name,
      colEmail: email,
      colProfile: profile,
      
    };
    return mapData;
  }

  Map<String, dynamic> toJson() {
    var jsonData = <String, dynamic>{
      colName: name,
      colEmail: email,
      colProfile: profile,
      
    };
    return jsonData;
  }
}

class Pray {
  String psound;
  String ptext;
  String? referenceId;

  static const collectionPray = 'pray';
  static const colPsound = 'psound';
  static const colPtext = 'ptext';

  Pray(
      {required this.psound,
      required this.ptext,
      this.referenceId});

  Map<String, dynamic> toMap() {
    var mapData = <String, dynamic>{
      colPsound: psound,
      colPtext: ptext,
      
    };
    return mapData;
  }

  Map<String, dynamic> toJson() {
    var jsonData = <String, dynamic>{
      colPsound: psound,
      colPtext: ptext,
      
    };
    return jsonData;
  }
}

class Fetist {
  String fimage;
  String ftext;
  String? referenceId;

  static const collectionFetish = 'fetist';
  static const colFimage = 'fimage';
  static const colFtext = 'ftext';

  Fetist(
      {required this.fimage,
      required this.ftext,
      this.referenceId});

  Map<String, dynamic> toMap() {
    var mapData = <String, dynamic>{
      colFimage: fimage,
      colFtext: ftext,
      
    };
    return mapData;
  }

  Map<String, dynamic> toJson() {
    var jsonData = <String, dynamic>{
      colFimage: fimage,
      colFtext: ftext,
      
    };
    return jsonData;
  }
}