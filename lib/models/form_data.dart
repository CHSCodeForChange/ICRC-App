class FormDataModel {
  Map<String, int> offenderType = {'Business': 1, 'Person': 2};
  Map<String, int> discType = {
    'Employment': 1,
    'Housing': 2,
    'Accomodation': 3,
    'Credit': 4,
    'Education': 5
  };
  Map<String, int> discBasis = {
    'Age': 1,
    'Ancestry': 2,
    'Color': 3,
    'Disability': 4,
    'Race': 5,
    'Religion': 6,
    'Sex': 7,
    'Familial Status': 8,
    'National Origin': 9
  };
  Map<String, int> discRef = {
    'Attorney/Lawyer': 1,
    'Government Agency': 2,
    'Friend': 3,
    'Advertisement': 4,
    'Brochure/Poster': 5,
    'Internet': 6
  };

  String firstname;
  String secFirstname;
  String lastname;
  String secLastname;
  String email;
  String secEmail;
  String phonenumber;
  String secPhonenumber;

  String city;
  String secCity;
  String state;
  String secState;
  String address;
  String secAddress;
  String zipcode;
  String secZipcode;

  bool signed;

  void setPageOneData(
      String firstname, String lastname, String email, String phonenumber) {
    this.firstname = firstname;
    this.lastname = lastname;
    this.email = email;
    this.phonenumber = phonenumber;
  }

  void setPageTwoData(
      String city, String state, String address, String zipcode) {
    this.city = city;
    this.state = state;
    this.address = address;
    this.zipcode = zipcode;
  }

  void setSecPageOneData(
      String firstname, String lastname, String email, String phonenumber) {
    this.secFirstname = firstname;
    this.secLastname = lastname;
    this.secEmail = email;
    this.secPhonenumber = phonenumber;
  }

  void setSecPageTwoData(
      String city, String state, String address, String zipcode) {
    this.secCity = city;
    this.secState = state;
    this.secAddress = address;
    this.secZipcode = zipcode;
  }

  Map<String, dynamic> toJson() => {
        'first_name': firstname,
        'last_name': lastname,
        'email': email,
        'phone_number': phonenumber,
        'address': address,
        'city': city,
        'state': state,
        'zip_code': zipcode,
        'secondary_first_name': secFirstname,
        'secondary_last_name': secLastname,
        'secondary_email': secEmail,
        'secondary_phone_number': secPhonenumber,
        'secondary_city': secCity,
        'secondary_state': secState,
        'secondary_zip_code': secZipcode,
      };
}
