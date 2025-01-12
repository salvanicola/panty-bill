import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:panty_bill/src/authentication/pages/sign_in_page.dart';
import 'package:panty_bill/src/bills/screens/bill_create_screen.dart';
import 'package:panty_bill/src/home/pages/home_page.dart';

class AppRouter {
  // Add GoRouter configuration outside the App class
  static final router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => HomePage(),
          redirect: (context, state) {
            var isAuthenticated = FirebaseAuth.instance.currentUser != null;

            if (isAuthenticated) {
              return null;
            }
            return '/sign-in';
          },
          routes: [
            GoRoute(
              name: 'profile',
              path: '/profile',
              builder: (context, state) {
                return ProfileScreen(
                  providers: const [],
                  actions: [
                    SignedOutAction((context) {
                      context.pushReplacement('/');
                    }),
                  ],
                );
              },
            ),
          ]),
      GoRoute(
        name: 'sign-in',
        path: '/sign-in',
        builder: (context, state) => SignInPage(),
        routes: [
          GoRoute(
            name: 'forgot-password',
            path: '/forgot-password',
            builder: (context, state) {
              final arguments = state.uri.queryParameters;
              return ForgotPasswordScreen(
                email: arguments['email'],
                headerMaxExtent: 200,
              );
            },
          ),
        ],
      ),
      GoRoute(
          path: '/bills/create',
          name: 'create-bill',
          builder: (context, state) => BillCreateScreen()),
    ],
  );
// end of GoRouter configuration
}
