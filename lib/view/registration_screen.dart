import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tr/controllers/state_controller.dart';
import '../controllers/adv_regis_controller.dart';
import '../controllers/district_controller.dart';
import '../models/district_model.dart';
import '../models/state_model.dart';
import '../res/components/round_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

//var selectedValue = "Please select state";
//var selectValue = "Please select district";
Dumo? selectedValue;
Data? selectValue;

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isChecked = false;

  void toggleCheckbox(bool value) {
    if (isChecked == false) {
      // Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked = true;
      });
    } else {
      // Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked = false;
      });
    }
  }

  String? advocateName;
  String? mobileNo;
  String? emailid;
  String? licencesNo;
  String? practiceCourtName;
  String? address;
  String? city;
  String? stateid;
  String? districtid;

  final stateCr = Get.put(StateController());
  final districtController = Get.put(DistrictController());
  final advRegisCr = Get.put(AdvRegisController());

  final advocateNameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailidController = TextEditingController();
  final licensenoController = TextEditingController();
  final practiceCourtController = TextEditingController();
  final addressController = TextEditingController();
  final stateController = TextEditingController();
  final districtsController = TextEditingController();
  final cityController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    stateCr.stateData();
  }

  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height * 1;
    //final widt = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: const Color(0xFFEBEDF0),
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: const Color(0xFF1E336A),
        title: const Text(
          'Advocate Registration',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: heigh * 0.02),

              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: advocateNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      // return "Please Enter a Advocate Name";
                    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Please Enter a Valid Advocate Name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text(
                      'Advocate Name'.tr,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),

              SizedBox(height: heigh * 0.02),
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: mobileController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      //return "Please Enter a Phone Number";
                    } else if (!RegExp(
                            r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                        .hasMatch(value)) {
                      return "Please Enter a Valid Phone Number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text(
                        'Mobile No'.tr,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      prefixText: '+91 ',
                      prefixStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(height: heigh * 0.02),
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: emailidController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      // return "Please Enter a Email id";
                    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return "Please Enter a Valid Email id";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text(
                      'Email id'.tr,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),

              SizedBox(height: heigh * 0.02),
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: licensenoController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      //return "Please Enter a Licences Number";
                    } else if (!RegExp(
                            r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                        .hasMatch(value)) {
                      return "Please Enter a Valid Licences Number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text(
                      'Licences No'.tr,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),

              SizedBox(height: heigh * 0.02),
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: practiceCourtController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      //return "Please Enter a PracticeCourName";
                    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Please Enter a Valid PracticeCourName";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text(
                      'PracticeCourtName'.tr,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),

              SizedBox(height: heigh * 0.02),
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: addressController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      // return "Please Enter a Address";
                    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Please Enter a Valid Address";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text(
                      'Address'.tr,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  maxLines: 3,
                  minLines: 3,
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(height: heigh * 0.02),

              Obx(
                () => Visibility(
                  visible: stateCr.StateList != null,
                  child: DropdownButtonFormField(
                    hint: const Text(
                      'Please select state',
                    ),
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    value: selectedValue,
                    // ignore: invalid_use_of_protected_member
                    items: stateCr.StateList?.value.map((Dumo items) {
                      return DropdownMenuItem(
                        value: items.id,
                        child: Text(items.name.toString()),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        stateid = val.toString();
                        districtController.districtData(val);
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: heigh * 0.02),

              Obx(
                () => Visibility(
                  visible: districtController.districtList != null,
                  child: DropdownButtonFormField(
                    hint: const Text(
                      'Please select district',
                    ),
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    value: selectValue,
                    // ignore: invalid_use_of_protected_member
                    items: districtController.districtList?.value.map((items) {
                      return DropdownMenuItem(
                        value: items.id,
                        child: Text(items.name.toString()),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        districtid = val.toString();
                      });
                    },
                  ),
                ),
              ),

              SizedBox(height: heigh * 0.02),

              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: cityController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      // return "Please Enter a City";
                    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Please Enter a Valid City";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text(
                      'City'.tr,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),

              SizedBox(height: heigh * 0.02),

              InkWell(
                onTap: () {
                  toggleCheckbox(isChecked);
                },
                child: Row(
                  children: [
                    //Icon(Icons.check_box),
                    Transform.scale(
                      scale: 1,
                      child: Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          toggleCheckbox(value!);
                        },
                        activeColor: const Color(0xFF00bbf2),
                        checkColor: Colors.white,
                        tristate: false,
                      ),
                    ),

                    const Text(
                      "I Accept terms & Conditions",
                      //"${checkedResult}",
                      style: TextStyle(
                          fontSize: 16,
                          //color: Color(0xFF1E336A),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              SizedBox(height: heigh * .02),

              ////////////////////Button///////////
              Obx(
                () => RoundButton(
                  height: 50,
                  width: 250,
                  title: 'Submit'.tr,
                  loading: advRegisCr.loading.value,
                  onPress: () {
                    final advocateName = advocateNameController.text;
                    final mobileNo = mobileController.text;
                    final emailid = emailidController.text;
                    final licencesNo = licensenoController.text;
                    final practiceCourtName = practiceCourtController.text;
                    final address = addressController.text;
                    final city = cityController.text;
                    // final stateid = stateController.text;
                    // final districtid = districtsController.text;
                    mobileController.clear();
                    emailidController.clear();
                    practiceCourtController.clear();
                    licensenoController.clear();
                    stateController.clear();
                    districtsController.clear();
                    cityController.clear();
                    advocateNameController.clear();
                    addressController.clear();

                    advRegisCr.advRegigFunction(
                        advocateName,
                        mobileNo,
                        emailid,
                        licencesNo,
                        practiceCourtName,
                        address,
                        city,
                        stateid,
                        districtid);
                  },
                  child: const Text("data"),
                ),
              ),

              SizedBox(height: heigh * 0.02),
            ],
          ),
        ),
      ),
      //   ),
    );
  }
}
