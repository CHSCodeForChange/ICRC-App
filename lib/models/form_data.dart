class FormDataModel {
  String firstname;
  String lastname;
  String email;
  String phonenumber;

  String city;
  String state;
  String address;
  String zipcode;

  String description;  

  String descriminator;  
  String descrimPhonenumber;  

  String descrimCity;  
  String descrimState;  
  String descrimAddress;  
  String descrimZipcode;  

  String descrimArea;
  
  String descrimDatetime;

  List descrimTypes;

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
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'phonenumber':phonenumber,

      'city':city,
      'state':state,
      'address':address,
      'zipcode':zipcode,


    };
}