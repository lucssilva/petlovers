import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:petlovers_ui/@atoms.dart';
import 'package:petlovers_ui/@enums/formfield.enum.dart';
import 'package:petlovers_ui/@molecules.dart'
    show FormFieldComponent, FormWrapperComponent, LogoComponent;
import 'package:petlovers_ui/@theme/petlovers.theme.dart';
import 'package:petlovers_ui/atoms/button.outlined.dart';
import 'package:petlovers_ui/templates/listscreen.template.dart'
    show ListScreenTemplate;

void main() => runApp(_StorybookApp());

class _Page extends StatelessWidget {
  @override
  build(_) => ListScreenTemplate(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: LogoComponent(size: 60),
        ),
        FormWrapperComponent(formKey: GlobalKey(), children: [
          FormFieldComponent(
            type: FormFieldType.text,
            hintText: 'Nome de Usuário',
          ),
          FormFieldComponent(
            type: FormFieldType.email,
            hintText: 'Email',
          ),
          FormFieldComponent(
            type: FormFieldType.secret,
            hintText: 'Senha',
          ),
          Text.rich(
            TextSpan(
              text: 'Ao se registrar, você concorda com nossos ',
              style: PetLoversTheme.theme.primaryTextTheme.bodyText2,
              children: <TextSpan>[
                TextSpan(
                  text: 'Termos e Política de dados.',
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  style: (PetLoversTheme.theme.primaryTextTheme.bodyText1)!
                      .copyWith(height: 1.5, color: Colors.amber[700]),
                ),
              ],
            ),
          ),
          PetLoversButton(text: 'Registrar', action: () {}),
          PetLoversOutlinedButton(text: 'Cancelar', action: () {})
        ]),
      ]);
}

class _StorybookApp extends StatelessWidget {
  @override
  build(_) => MaterialApp(home: _Page());
}
