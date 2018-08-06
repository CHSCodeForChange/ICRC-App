class FormDataModel {
  String firstname;
  String lastname;
  String email;
  String phonenumber;

  String city;
  String state;
  String address;
  String zipcode;

  bool signed;

  void setPageOneData(String firstname, String lastname, String email, String phonenumber) {
    this.firstname = firstname;
    this.lastname = lastname;
    this.email = email;
    this.phonenumber = phonenumber;
  }

  void setPageTwoData(String city, String state, String address, String zipcode) {
    this.city = city;
    this.state = state;
    this.address = address;
    this.zipcode = zipcode;
  }

  Map<String, dynamic> toJson() =>
    {
      'first_name': firstname,
      'last_name': lastname,
      'email': email,
      'phone_number': phonenumber,
      'address': address,
      'city': city,
      'state': state,
      'zip_code': zipcode,
    };
}
