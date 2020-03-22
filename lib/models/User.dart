import 'dart:convert';

class User {

  String firstName = '';
  String lastName = '';
  String mobileNum = '';
  String emailId = '';
  String message = '';
  User({
    this.firstName,
    this.lastName,
    this.mobileNum,
    this.emailId,
    this.message,
  });
  

  User copyWith({
    String firstName,
    String lastName,
    String mobileNum,
    String emailId,
    String message,
  }) {
    return User(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      mobileNum: mobileNum ?? this.mobileNum,
      emailId: emailId ?? this.emailId,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'mobileNum': mobileNum,
      'emailId': emailId,
      'message': message,
    };
  }

  static User fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return User(
      firstName: map['firstName'],
      lastName: map['lastName'],
      mobileNum: map['mobileNum'],
      emailId: map['emailId'],
      message: map['message'],
    );
  }

  String toJson() => json.encode(toMap());

  static User fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(firstName: $firstName, lastName: $lastName, mobileNum: $mobileNum, emailId: $emailId, message: $message)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is User &&
      o.firstName == firstName &&
      o.lastName == lastName &&
      o.mobileNum == mobileNum &&
      o.emailId == emailId &&
      o.message == message;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
      lastName.hashCode ^
      mobileNum.hashCode ^
      emailId.hashCode ^
      message.hashCode;
  }
}
