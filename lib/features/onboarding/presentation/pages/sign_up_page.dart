import 'package:centic_bids/core/ui/widgets/buttons/main_bar_button.dart';
import 'package:centic_bids/core/ui/widgets/text_fields/default_text_field.dart';
import 'package:centic_bids/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../injection_container.dart';

class SignUpPage extends StatelessWidget{
  final SignUpPageStyle styles = di();
  TextEditingController firstNameFieldController = TextEditingController();
  FocusNode firstNameFieldFocusNode = FocusNode();
  TextEditingController lastNameFieldController = TextEditingController();
  FocusNode lastNameFieldFocusNode = FocusNode();
  TextEditingController emailFieldController = TextEditingController();
  FocusNode emailFieldFocusNode = FocusNode();
  TextEditingController passwordFieldController = TextEditingController();
  FocusNode passwordFieldFocusNode = FocusNode();
  TextEditingController retypePasswordFieldController = TextEditingController();
  FocusNode retypePasswordFieldFocusNode = FocusNode();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).signUpPageTitle),),
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
                textFieldLabel: 'First name',
                textFieldPlaceHolder: '',
                controller: firstNameFieldController,
                textInputAction: TextInputAction.next,
                focusNode: firstNameFieldFocusNode,
                nextFocusNode: lastNameFieldFocusNode,
              ),
              DefaultTextField(
                textFieldLabel: 'Last name',
                textFieldPlaceHolder: '',
                controller: lastNameFieldController,
                textInputAction: TextInputAction.next,
                focusNode: lastNameFieldFocusNode,
                nextFocusNode: emailFieldFocusNode,
              ),
              DefaultTextField(
                textFieldLabel: 'Email',
                textFieldPlaceHolder: '',
                controller: emailFieldController,
                textInputAction: TextInputAction.next,
                focusNode: emailFieldFocusNode,
                nextFocusNode: passwordFieldFocusNode,
              ),
              DefaultTextField(
                textFieldLabel: 'Password',
                textFieldPlaceHolder: '',
                controller: passwordFieldController,
                textInputAction: TextInputAction.next,
                focusNode: passwordFieldFocusNode,
                nextFocusNode: retypePasswordFieldFocusNode,
              ),
              DefaultTextField(
                textFieldLabel: 'Retype Password',
                textFieldPlaceHolder: '',
                controller: retypePasswordFieldController,
                textInputAction: TextInputAction.next,
                focusNode: retypePasswordFieldFocusNode,
                onSubmitCallback: (text) => _onTapSubmit(context),
              ),
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
          title: S.of(context).signUpPageSubmitBtnTitle,
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

class SignUpPageStyle {

}