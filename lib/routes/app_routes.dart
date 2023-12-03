import 'package:flutter/material.dart';
import 'package:ecommerce/presentation/onboard_screen/onboard_screen.dart';
import 'package:ecommerce/presentation/home_screen/home_screen.dart';
import 'package:ecommerce/presentation/workspaces_tab_container_screen/workspaces_tab_container_screen.dart';
import 'package:ecommerce/presentation/dev_workspaces_screen/dev_workspaces_screen.dart';
import 'package:ecommerce/presentation/login_screen/login_screen.dart';
import 'package:ecommerce/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:ecommerce/presentation/view_item_screen/view_item_screen.dart';
import 'package:ecommerce/presentation/search_screen/search_screen.dart';
import 'package:ecommerce/presentation/cart_screen/cart_screen.dart';
import 'package:ecommerce/presentation/done_screen/done_screen.dart';
import 'package:ecommerce/presentation/scanned_item_screen/scanned_item_screen.dart';
import 'package:ecommerce/presentation/checkout_screen/checkout_screen.dart';
import 'package:ecommerce/presentation/orders_screen/orders_screen.dart';
import 'package:ecommerce/presentation/filter_one_screen/filter_one_screen.dart';
import 'package:ecommerce/presentation/filter_screen/filter_screen.dart';
import 'package:ecommerce/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardScreen = '/onboard_screen';

  static const String homeScreen = '/home_screen';

  static const String workspacesPage = '/workspaces_page';

  static const String workspacesTabContainerScreen =
      '/workspaces_tab_container_screen';

  static const String devWorkspacesScreen = '/dev_workspaces_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String viewItemScreen = '/view_item_screen';

  static const String searchScreen = '/search_screen';

  static const String cartScreen = '/cart_screen';

  static const String doneScreen = '/done_screen';

  static const String scannedItemScreen = '/scanned_item_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String ordersScreen = '/orders_screen';

  static const String filterOneScreen = '/filter_one_screen';

  static const String filterScreen = '/filter_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardScreen: OnboardScreen.builder,
        homeScreen: HomeScreen.builder,
        workspacesTabContainerScreen: WorkspacesTabContainerScreen.builder,
        devWorkspacesScreen: DevWorkspacesScreen.builder,
        loginScreen: LoginScreen.builder,
        signUpScreen: SignUpScreen.builder,
        viewItemScreen: ViewItemScreen.builder,
        searchScreen: SearchScreen.builder,
        cartScreen: CartScreen.builder,
        doneScreen: DoneScreen.builder,
        scannedItemScreen: ScannedItemScreen.builder,
        checkoutScreen: CheckoutScreen.builder,
        ordersScreen: OrdersScreen.builder,
        filterOneScreen: FilterOneScreen.builder,
        filterScreen: FilterScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardScreen.builder
      };
}
