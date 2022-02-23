part of 'app_pages.dart';

abstract class CommonRoutes {
  static const AUTH = '/auth';
  static const CREATEACCOUNT = '/create_account';
  static const HOME = '/home';
}

abstract class UserRoutes {
  static const INQUIRY = '/user_inquiry';
  static const CHAT = '/user_chat';
}

abstract class CallerRoutes {
  static const INQUIRY = '/caller_inquiry';
  static const CHAT = '/caller_chat';
}
