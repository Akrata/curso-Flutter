import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Pablo',
      'last_name': ' Feijo',
      'email': 'a@a.com',
      'password': '1234',
      'role': 'admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre de usuario',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido de usuario',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Email de usuario',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña de usuario',
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text("Admin"),
                    ),
                    DropdownMenuItem(
                      value: 'User',
                      child: Text("User"),
                    )
                  ],
                  onChanged: (String? value) {
                    print(value);
                    formValues['role'] = value ?? 'User';
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print("formulario no valido");
                      return;
                    }
                    ;
                    print(formValues);
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text("Enviar"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
