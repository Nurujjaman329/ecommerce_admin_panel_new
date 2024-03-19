import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  static const String routeName = '\CategoriesScreen';

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  uploadCategory() {
    if (_formKey.currentState!.validate()) {
      print("Thank You");
    } else {
      print('Very Bad');
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Category',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          border: Border.all(
                            color: Colors.grey.shade800,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text('Category '),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * .040,
                            width: MediaQuery.of(context).size.width * .10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                              color: Colors.yellow.shade900,
                            ),
                            child: Center(
                              child: Text(
                                'Upload Image',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    width: 170,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Category name must not be empty!';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter Category Name',
                        hintText: 'Enter Category Name',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                GestureDetector(
                  onTap: () {
                    uploadCategory();
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * .040,
                    width: MediaQuery.of(context).size.width * .050,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.0,
                      ),
                      color: Colors.yellow.shade900,
                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
