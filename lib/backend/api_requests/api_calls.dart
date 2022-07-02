import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class LoginValCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'loginVal',
      apiUrl: 'https://snapkaro.com/eazyrooms_staging/api/userlogin',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class SignupvalCall {
  static Future<ApiCallResponse> call({
    String userFirstname = 'mani',
    String userEmail = 'mail@gmail.com',
    int userPhone = 9999999999,
    String userPassword = '123455',
    String userLastname = 'kanta',
    String userCity = 'Hyderabad',
    int userZipcode = 500072,
  }) {
    final body = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signupval',
      apiUrl: 'https://snapkaro.com/eazyrooms_staging/api/user_registeration',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_firstname': userFirstname,
        'user_email': userEmail,
        'user_phone': userPhone,
        'user_password': userPassword,
        'user_lastname': userLastname,
        'user_city': userCity,
        'user_zipcode': userZipcode,
      },
      body: body,
      bodyType: BodyType.TEXT,
      returnBody: true,
    );
  }
}
