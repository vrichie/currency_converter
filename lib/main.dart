import 'package:currency_converter/screens/home_page_c.dart';
import 'package:currency_converter/screens/home_page_m.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*

/// Stateless vs Stateful Widgets:
///
/// - Stateless Widgets:
///   - These widgets do not have any mutable state.
///   - Once created, they cannot change their appearance or behavior.
///   - They are immutable and are typically used for static content.
///   - Examples include `Text`, `Icon`, and `Image`.
///
/// - Stateful Widgets:
///   - These widgets have mutable state that can change over time.
///   - They can rebuild themselves when their internal state changes.
///   - They are used for dynamic content that can change in response to user interactions or other events.
///   - Examples include `Checkbox`, `Slider`, and `Form`.
///
/// In summary, use Stateless Widgets for static content and Stateful Widgets for dynamic content that needs to change.


*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePageM());
  }
}

class MyAppC extends StatelessWidget {
  const MyAppC({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: HomePageC());
  }
}
