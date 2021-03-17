import 'package:centic_bids/core/ui/widgets/buttons/main_bar_button.dart';
import 'package:centic_bids/core/ui/widgets/text_fields/default_text_field.dart';
import 'package:centic_bids/core/ui/widgets/widget_type.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:centic_bids/injection_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:centic_bids/themes/app_colors.dart' as appColors;
import 'package:centic_bids/themes/app_fonts.dart' as appFonts;
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget{
  final SignInPageStyle styles = di();
  TextEditingController usernameFieldController = TextEditingController();
  FocusNode usernameFieldFocusNode = FocusNode();
  TextEditingController passwordFieldController = TextEditingController();
  FocusNode passwordFieldFocusNode = FocusNode();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).signInPageTitle),),
      body: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            FocusManager.instance.primaryFocus.unfocus();
          },
          child: _buildBody(context)),
      bottomNavigationBar: _submitBtn(context),
    );
  }

  Widget _buildBody(BuildContext context){
    return _body(context);
  }

  Widget _body(BuildContext context){
    return IgnorePointer(
      ignoring: false,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              DefaultTextField(
                textFieldLabel: 'Username',
                textFieldPlaceHolder: '',
                controller: usernameFieldController,
                textInputAction: TextInputAction.next,
                focusNode: usernameFieldFocusNode,
                  nextFocusNode: passwordFieldFocusNode,

              ),
              DefaultTextField(
                textFieldLabel: 'Password',
                textFieldPlaceHolder: '',
                controller: passwordFieldController,
                textInputAction: TextInputAction.done,
                focusNode: passwordFieldFocusNode,
                onSubmitCallback: (text) => _onTapSubmit(context),

              )
            ],
          ),
        ),
      ),
    );
  }


  Widget _submitBtn(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: MainBarButton(
          title: S.of(context).signInPageSubmitBtnTitle,
          onTapCallback: () => _onTapSubmit(context),
        ),
      ),
      elevation: 2,
    );
  }

  _onTapSubmit(BuildContext context){
    print('on submit');
  }

}

class SignInPageStyle {
  
}