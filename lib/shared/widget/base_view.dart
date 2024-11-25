part of 'widget.dart';

class BaseView extends StatelessWidget {
  final drawerHeaderHeight =
      Get.mediaQuery.size.height * NumberConstant.drawerHeaderHeightMultiplier;
  final List<Widget> children;
  BaseView({super.key, required this.children});

  _appTitle() {
    return Text(
      StringConstant.appName,
      style: CustomTextStyle.appTitle,
    );
  }

  _baseAppBar() {
    return AppBar(title: _appTitle());
  }

  _gradient() {
    return LinearGradient(
      colors: CustomColor.appGradient,
      stops: NumberConstant.appGradientStops);
  }

  _baseDrawerHeader() {
    return Container(
        alignment: Alignment.centerLeft,
        height: drawerHeaderHeight,
        decoration: BoxDecoration(gradient: _gradient()),
        child: CustomPadding.topPadding(
            child: CustomPadding.horizontalPadding(
                child: _appTitle(),
                value: NumberConstant.horizontalDrawerHeaderPadding),
            value: NumberConstant.topDrawerHeaderPadding));
  }

  _accountButton() {
    return TextButton(
        onPressed: () => {},
        child: CustomPadding.horizontalPadding(
          child: const Text(
            StringConstant.drawerAuthOption,
            style: CustomTextStyle.interactableText,
          )));
  }

  _settingsButton() {
    return TextButton(
      onPressed: () => {},
      child: CustomPadding.horizontalPadding(
        child: const Text(
          StringConstant.drawerSettingsOption,
          style: CustomTextStyle.interactableText,
        )));
  }

  _baseDrawer() {
    return Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _baseDrawerHeader(),
            Row(children: [
              _accountButton(),
              const Spacer()
            ]),
            const Spacer(),
            SafeArea(child:
              Row(children: [
              _settingsButton()
              ]
            ))
          ],
        )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _baseAppBar(),
        drawer: _baseDrawer(),
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ))));
  }
}
