import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_file_picker/form_builder_file_picker.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

// Create a Form widget.
class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  UserFormState createState() {
    return UserFormState();
  }
}

class UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    localizationsDelegates:
    const [
      FormBuilderLocalizations.delegate,
      // GlobalMaterialLocalizations.delegate,
      // GlobalWidgetsLocalizations.delegate,
    ];
    // supportedLocales: FormBuilderLocalizations.delegate.supportedLocales,
    bool autoValidate = true;
    bool readOnly = false;
    bool showSegmentedControl = true;
    final _formKey = GlobalKey<FormBuilderState>();
    bool _ageHasError = false;
    bool _genderHasError = false;
    bool _useCustomFileViewer = true;

    void _onChanged(dynamic val) => debugPrint(val.toString());
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/form_bg.png'), fit: BoxFit.fill),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FormBuilder(
                    key: _formKey,

                    // enabled: false,
                    // onChanged: () {
                    //   _formKey.currentState!.save();
                    //   debugPrint(_formKey.currentState!.value.toString());
                    // },
                    autovalidateMode: AutovalidateMode.disabled,
                    initialValue: const {
                      // 'movie_rating': 5,
                      // 'best_language': 'Dart',
                      // 'age': '13',
                      // 'email': 'a@gmail.com',
                      // 'full name': 'Avinash',
                      // 'address': '123',
                      // 'gender': 'Male',
                      // 'languages_filter': ['Dart']
                    },
                    skipDisabled: true,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FormBuilderTextField(
                            cursorColor: Colors.white,
                            autovalidateMode: AutovalidateMode.always,
                            name: 'Full Name',

                            decoration: const InputDecoration(
                              labelText: 'Full Name',
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0)),
                              labelStyle: TextStyle(color: Colors.white),

                              // fillColor: Colors.white,
                              // suffixIcon: _ageHasError
                              //     ? const Icon(Icons.error, color: Colors.red)
                              //     : const Icon(Icons.check,
                              //         color: Colors.green),
                            ),
                            // onChanged: (val) {
                            //   setState(() {
                            //     _ageHasError = !(_formKey
                            //             .currentState?.fields['full name']
                            //             ?.validate() ??
                            //         false);
                            //   });
                            // },
                            style: TextStyle(color: Colors.white),

                            valueTransformer: (text) => num.tryParse(text!),
                            // validator: FormBuilderValidators.compose([
                            //   FormBuilderValidators.required(),
                            //   FormBuilderValidators.numeric(),
                            //   FormBuilderValidators.max(70),
                            // ]),
                            // initialValue: '12',

                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FormBuilderTextField(
                            autovalidateMode: AutovalidateMode.always,
                            name: 'email',
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0)),
                              errorBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2.0),
                              ),
                              // suffixIcon: _ageHasError
                              //     ? const Icon(Icons.error, color: Colors.red)
                              //     : const Icon(Icons.check,
                              //         color: Colors.green),
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            style: TextStyle(color: Colors.white),

                            // onChanged: (val) {
                            //   setState(() {
                            //     _ageHasError = !(_formKey
                            //             .currentState?.fields['Email']
                            //             ?.validate() ??
                            //         false);
                            //   });
                            // },
                            // valueTransformer: (text) => num.tryParse(text),

                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                              FormBuilderValidators.email(),
                              FormBuilderValidators.max(70),
                            ]),
                            // initialValue: '12',
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          ),

                          // FormBuilderDropdown<String>(
                          //   // autovalidate: true,
                          //   name: 'gender',
                          //   decoration: InputDecoration(
                          //     labelText: 'Gender',
                          //     suffix: _genderHasError
                          //         ? const Icon(Icons.error)
                          //         : const Icon(Icons.check),
                          //     hintText: 'Select Gender',
                          //   ),
                          //   validator: FormBuilderValidators.compose(
                          //       [FormBuilderValidators.required()]),
                          //   items: genderOptions
                          //       .map((gender) => DropdownMenuItem(
                          //             alignment: AlignmentDirectional.center,
                          //             value: gender,
                          //             child: Text(gender),
                          //           ))
                          //       .toList(),
                          //   onChanged: (val) {
                          //     setState(() {
                          //       _genderHasError = !(_formKey
                          //               .currentState?.fields['gender']
                          //               ?.validate() ??
                          //           false);
                          //     });
                          //   },
                          //   valueTransformer: (val) => val?.toString(),
                          // ),
                          SizedBox(
                            height: 20,
                          ),
                          FormBuilderRadioGroup<String>(
                            hoverColor: Colors.white,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.white),
                              ),
                              labelText: "Select Type of Help",
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal),
                              fillColor: Colors.white,
                              focusColor: Colors.white,
                              hoverColor: Colors.white,
                            ),

                            initialValue: null,
                            name: 'type of need',
                            onChanged: _onChanged,
                            validator: FormBuilderValidators.compose(
                                [FormBuilderValidators.required()]),
                            options: [
                              'Children Education',
                              'School Architecture',
                              'Scholarships'
                            ]
                                .map((type) => FormBuilderFieldOption(
                                      value: type,
                                      child: Text(
                                        type,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ))
                                .toList(growable: false),
                            controlAffinity: ControlAffinity.trailing,
                            activeColor: Colors.white,

                            focusColor: Colors.white,
                            // hoverColor: Colors.white,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FormBuilderTextField(
                            autovalidateMode: AutovalidateMode.always,
                            name: 'Address',
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              labelText: 'Address',
                              labelStyle: TextStyle(color: Colors.white),
                              suffixIcon: _ageHasError
                                  ? const Icon(Icons.error, color: Colors.red)
                                  : const Icon(Icons.check,
                                      color: Colors.green),
                            ),
                            style: TextStyle(color: Colors.white),

                            // onChanged: (val) {
                            //   setState(() {
                            //     _ageHasError = !(_formKey
                            //             .currentState?.fields['address']
                            //             ?.validate() ??
                            //         false);
                            //   });
                            // },
                            valueTransformer: (text) => num.tryParse(text!),
                            // validator: FormBuilderValidators.compose([
                            //   FormBuilderValidators.required(),
                            //   FormBuilderValidators.numeric(),
                            //   FormBuilderValidators.max(70),
                            // ]),
                            // initialValue: '12',
                            minLines: 3,
                            maxLines: 15,
                            keyboardType: TextInputType.multiline,
                            textInputAction: TextInputAction.next,
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          FormBuilderFilePicker(
                            name: "attachments",
                            previewImages: true,
                            allowMultiple: true,
                            withData: true,
                            typeSelectors: [
                              TypeSelector(
                                type: FileType.any,
                                selector: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.add_circle,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Add documents",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (!kIsWeb)
                                TypeSelector(
                                  type: FileType.image,
                                  selector: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.add_photo_alternate,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          "Add images",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState?.saveAndValidate() ??
                                false) {
                              debugPrint(
                                  _formKey.currentState?.value.toString());
                            } else {
                              debugPrint(
                                  _formKey.currentState?.value.toString());
                              debugPrint('validation failed');
                            }
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            _formKey.currentState?.reset();
                          },
                          // color: Theme.of(context).colorScheme.secondary,
                          child: Text(
                            'Reset',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget customFileViewerBuilder(
  List<PlatformFile>? files,
  FormFieldSetter<List<PlatformFile>> setter,
) {
  return ListView.separated(
    shrinkWrap: true,
    itemBuilder: (context, index) {
      final file = files[index];
      return ListTile(
        title: Text(file.name),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            files.removeAt(index);
            setter.call([...files]);
          },
        ),
      );
    },
    separatorBuilder: (context, index) => const Divider(
      color: Colors.blueAccent,
    ),
    itemCount: files!.length,
  );
}
