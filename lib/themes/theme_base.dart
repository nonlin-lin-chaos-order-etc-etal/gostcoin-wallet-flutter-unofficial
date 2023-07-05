import 'package:cake_wallet/themes/extensions/account_list_theme.dart';
import 'package:cake_wallet/themes/extensions/address_theme.dart';
import 'package:cake_wallet/themes/extensions/alert_theme.dart';
import 'package:cake_wallet/themes/extensions/balance_page_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_scrollbar_theme.dart';
import 'package:cake_wallet/themes/extensions/cake_text_theme.dart';
import 'package:cake_wallet/themes/extensions/dashboard_page_theme.dart';
import 'package:cake_wallet/themes/extensions/exchange_page_theme.dart';
import 'package:cake_wallet/themes/extensions/filter_theme.dart';
import 'package:cake_wallet/themes/extensions/info_theme.dart';
import 'package:cake_wallet/themes/extensions/keyboard_theme.dart';
import 'package:cake_wallet/themes/extensions/menu_theme.dart';
import 'package:cake_wallet/themes/extensions/new_wallet_theme.dart';
import 'package:cake_wallet/themes/extensions/order_theme.dart';
import 'package:cake_wallet/themes/extensions/picker_theme.dart';
import 'package:cake_wallet/themes/extensions/pin_code_theme.dart';
import 'package:cake_wallet/themes/extensions/placeholder_theme.dart';
import 'package:cake_wallet/themes/extensions/qr_code_theme.dart';
import 'package:cake_wallet/themes/extensions/receive_page_theme.dart';
import 'package:cake_wallet/themes/extensions/seed_widget_theme.dart';
import 'package:cake_wallet/themes/extensions/send_page_theme.dart';
import 'package:cake_wallet/themes/extensions/support_page_theme.dart';
import 'package:cake_wallet/themes/extensions/sync_indicator_theme.dart';
import 'package:cake_wallet/themes/extensions/transaction_trade_theme.dart';
import 'package:cake_wallet/themes/extensions/wallet_list_theme.dart';
import 'package:flutter/material.dart';

enum ThemeType { bright, light, dark }

abstract class ThemeBase {
  ThemeBase({required this.raw});

  final int raw;
  String get title;
  ThemeType get type;

  @override
  String toString() {
    return title;
  }

  Brightness get brightness;
  Color get backgroundColor;
  Color get primaryColor;
  Color get primaryTextColor;
  Color get containerColor;
  Color get dialogBackgroundColor;

  ColorScheme get colorScheme => ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: primaryColor,
      background: backgroundColor);

  ThemeData get generatedThemeData => ThemeData.from(
      colorScheme: colorScheme,
      textTheme: TextTheme().apply(fontFamily: 'Lato'));

  DashboardPageTheme get dashboardPageTheme => DashboardPageTheme(
      firstGradientBackgroundColor: backgroundColor,
      secondGradientBackgroundColor: backgroundColor,
      thirdGradientBackgroundColor: backgroundColor,
      textColor: primaryTextColor);

  CakeScrollbarTheme get scrollbarTheme;

  SyncIndicatorTheme get syncIndicatorStyle;

  KeyboardTheme get keyboardTheme;

  PinCodeTheme get pinCodeTheme;

  SupportPageTheme get supportPageTheme;

  ExchangePageTheme get exchangePageTheme;

  NewWalletTheme get newWalletTheme;

  BalancePageTheme get balancePageTheme;

  AddressTheme get addressTheme;

  CakeMenuTheme get menuTheme;

  FilterTheme get filterTheme;

  WalletListTheme get walletListTheme;

  InfoTheme get infoTheme;

  PickerTheme get pickerTheme;

  AlertTheme get alertTheme;

  OrderTheme get orderTheme;

  SendPageTheme get sendPageTheme;

  SeedWidgetTheme get seedWidgetTheme;

  PlaceholderTheme get placeholderTheme;

  TransactionTradeTheme get transactionTradeTheme;

  CakeTextTheme get cakeTextTheme;

  AccountListTheme get accountListTheme;

  ReceivePageTheme get receivePageTheme;

  QRCodeTheme get qrCodeTheme;

  ThemeData get themeData => generatedThemeData.copyWith(
      primaryColor: primaryColor,
      cardColor: containerColor,
      dialogBackgroundColor: dialogBackgroundColor,
      extensions: [
        dashboardPageTheme,
        scrollbarTheme,
        syncIndicatorStyle,
        keyboardTheme,
        pinCodeTheme,
        supportPageTheme,
        exchangePageTheme,
        newWalletTheme,
        balancePageTheme,
        addressTheme,
        menuTheme,
        filterTheme,
        walletListTheme,
        infoTheme,
        pickerTheme,
        alertTheme,
        orderTheme,
        sendPageTheme,
        seedWidgetTheme,
        placeholderTheme,
        transactionTradeTheme,
        cakeTextTheme,
        accountListTheme,
        receivePageTheme,
        qrCodeTheme,
      ],
      scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(scrollbarTheme.thumbColor),
          trackColor: MaterialStateProperty.all(scrollbarTheme.trackColor),
          radius: Radius.circular(3),
          thickness: MaterialStateProperty.all(6),
          thumbVisibility: MaterialStateProperty.all(true),
          crossAxisMargin: 6));
}
