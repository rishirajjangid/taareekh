import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../controllers/client_reg_get_controller.dart';
import '../controllers/client_regis_controller.dart';
import '../controllers/district_controller.dart';
import '../models/district_model.dart';
import '../res/components/round_button.dart';

class ClientRegistrationScreen extends StatefulWidget {
  const ClientRegistrationScreen({super.key});

  @override
  State<ClientRegistrationScreen> createState() =>
      _ClientRegistrationScreenState();
}

Data? selectValue;
String? Client;
String? CourtName;

class _ClientRegistrationScreenState extends State<ClientRegistrationScreen> {
  ////////////////// Case Details ///////////////////////////
  String? caseCategory;
  String? caseTitle;
  String? courtName;
  String? natureofCase;
  String? caseNo;
  String? firno;
  String? year;
  String? policeStationName;
  String? matterInvolved;
  String? councelfor;
  String? stateid;
  String? districtid;
  ///// ////////////// personal Details  ///////////////////////////
  String? clientName;
  String? mobileNo;
  String? emailid;
  String? city;
  String? address;

  ////////////////////////Controller///////////////
  final districtController = Get.put(DistrictController());
  final clientRegisCr = Get.put(ClientRegisController());
  final clientGet = Get.put(ClientRegGetController());

  /////////////////////////TextEditingController////////////////////

  final caseCategoryController = TextEditingController();
  final caseTitleController = TextEditingController();
  final courtNameController = TextEditingController();
  final natureofCaseController = TextEditingController();
  final caseNoYearController = TextEditingController();
  final firnoController = TextEditingController();
  final yesrController = TextEditingController();
  final policeStationNameController = TextEditingController();
  final matterInvolvedController = TextEditingController();
  final councelForController = TextEditingController();
  final stateidController = TextEditingController();
  final districtidController = TextEditingController();

  /////////////////////

  final clientNameController = TextEditingController();
  final mobileNoController = TextEditingController();
  final emailidController = TextEditingController();
  final cityController = TextEditingController();
  final addressController = TextEditingController();

  final isLoding = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    clientGet.clientRegGets();
    //print('mahi');
    // print(clientGet.clientRegGet.value.caseCategory);
  }

  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height * 1;
    final widt = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      backgroundColor: const Color(0xFFEBEDF0),
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 25,
            ),
            child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.close,
                  size: 35,
                  color: Colors.white,
                )),
          ),
        ],
        automaticallyImplyLeading: false,

        //backgroundColor: const Color(0xFF1E336A),
        title: const Text(
          'Client Registration information',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: heigh * 0.02),

              const Row(
                children: [
                  Text(
                    'Case Details',
                    //textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              SizedBox(height: heigh * 0.02),

              Obx(
                () => Visibility(
                  visible: clientGet.clientRegGet.value.caseCategory != null,
                  child: DropdownButtonFormField(
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
                      value: Client,
                      hint: const Text('Case Category'),
                      // ignore: invalid_use_of_protected_member
                      items: clientGet.clientRegGet.value.caseCategory
                          .map((items) {
                        return DropdownMenuItem(
                          value: items.id,
                          child: Text(items.mastername.toString()),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          caseCategory = val.toString();
                          // districtController.districtData(val);
                        });
                      }),
                ),
              ),
              SizedBox(height: heigh * 0.02),
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: caseTitleController,
                  decoration: InputDecoration(
                    label: Text(
                      'Case Title'.tr,
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
              // FormField<String>(
              //   builder: (FormFieldState<String> state) {
              //     return InputDecorator(
              //       decoration: const InputDecoration(
              //         // labelText: 'Label text',
              //         // labelStyle: TextStyle(
              //         //   color: Color(0xFF6200EE),
              //         // ),
              //         contentPadding:
              //             EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
              //         filled: true,
              //         fillColor: Colors.white,
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //           borderSide: BorderSide(color: Colors.white),
              //         ),
              //         enabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //           borderSide: BorderSide(color: Colors.white),
              //         ),
              //       ),
              //       child: DropdownButtonHideUnderline(
              //         child: DropdownButton<String>(
              //           hint: Text("Select Device"),
              //           value: currentSelectedValue,
              //           isDense: true,
              //           onChanged: (newValue) {
              //             setState(() {
              //               currentSelectedValue = newValue;
              //             });
              //             print(currentSelectedValue);
              //           },
              //           items: stateCr.StateList?.value.map((Dumo items) {
              //             return DropdownMenuItem<String>(
              //               value: items.name,
              //               child: Text(items.name.toString()),
              //             );
              //           }).toList(),
              //         ),
              //       ),
              //     );
              //   },
              // ),
              SizedBox(height: heigh * 0.02),
              DropdownMenu(
                // width: double.infinity,
                hintText: 'Court Name',
                controller: courtNameController,
                enableFilter: true,
                requestFocusOnTap: true,
                // leadingIcon: const Icon(Icons.search),
                // label: const Text('Icon'),

                inputDecorationTheme: const InputDecorationTheme(
                  contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
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
                  //contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                ),
                width: widt * 0.92,
                onSelected: (item) {
                  setState(() {
                    CourtName = item;
                  });
                },
                dropdownMenuEntries: clientGet.clientRegGet.value.courtname
                    .map<DropdownMenuEntry>(
                  (item) {
                    return DropdownMenuEntry(
                      value: CourtName,
                      label: item.mastername.toString(),
                      //leadingIcon: Icon(icon.icon),
                    );
                  },
                ).toList(),
              ),
              // Obx(
              //   () => Visibility(
              //     visible: clientGet.clientRegGet.value.courtname != null,
              //     child: DropdownButtonFormField(
              //         decoration: const InputDecoration(
              //           contentPadding:
              //               EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
              //           border: OutlineInputBorder(
              //             borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //             borderSide: BorderSide(color: Colors.white),
              //           ),
              //           enabledBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //             borderSide: BorderSide(color: Colors.white),
              //           ),
              //           filled: true,
              //           fillColor: Colors.white,
              //         ),
              //         value: Client,
              //         hint: const Text('Court Name '),
              //         // ignore: invalid_use_of_protected_member
              //         items:
              //             clientGet.clientRegGet.value.courtname.map((items) {
              //           return DropdownMenuItem(
              //             value: items,
              //             child: Text(items.name.toString()),
              //           );
              //         }).toList(),
              //         onChanged: (val) {
              //           setState(() {
              //             val.toString();
              //             // districtController.districtData(val);
              //           });
              //         }),
              //   ),
              // ),
              SizedBox(height: heigh * 0.02),
              Obx(
                () => Visibility(
                  visible: clientGet.clientRegGet.value.natureofCase != null,
                  child: DropdownButtonFormField(
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
                      value: Client,
                      hint: const Text('Nature of Case'),
                      // ignore: invalid_use_of_protected_member
                      items: clientGet.clientRegGet.value.natureofCase
                          .map((items) {
                        return DropdownMenuItem(
                          value: items.id,
                          child: Text(items.mastername.toString()),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          natureofCase = val.toString();
                          // districtController.districtData(val);
                        });
                      }),
                ),
              ),
              SizedBox(height: heigh * 0.02),
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: caseNoYearController,
                  decoration: InputDecoration(
                    label: Text(
                      'Case No/Year'.tr,
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
                  controller: firnoController,
                  decoration: InputDecoration(
                    label: Text(
                      'FIR No'.tr,
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
                  controller: yesrController,
                  decoration: InputDecoration(
                    label: Text(
                      'year'.tr,
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
              DropdownMenu(
                // width: double.infinity,
                hintText: 'Police Station Name',
                controller: policeStationNameController,
                enableFilter: true,
                requestFocusOnTap: true,
                // leadingIcon: const Icon(Icons.search),
                // label: const Text('Icon'),

                inputDecorationTheme: const InputDecorationTheme(
                  contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
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
                  //contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                ),
                width: widt * 0.92,
                onSelected: (items) {
                  setState(() {
                    Client = items;
                  });
                },
                dropdownMenuEntries: clientGet.clientRegGet.value.policestation
                    .map<DropdownMenuEntry>(
                  (items) {
                    return DropdownMenuEntry(
                        value: Client, label: items.mastername.toString()
                        //leadingIcon: Icon(icon.icon),
                        );
                  },
                ).toList(),
              ),
              // SizedBox(height: heigh * 0.02),
              // Obx(
              //   () => Visibility(
              //     visible: clientGet.clientRegGet.value.policestation != null,
              //     child: DropdownButtonFormField(
              //         decoration: const InputDecoration(
              //           contentPadding:
              //               EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
              //           border: OutlineInputBorder(
              //             borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //             borderSide: BorderSide(color: Colors.white),
              //           ),
              //           enabledBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //             borderSide: BorderSide(color: Colors.white),
              //           ),
              //           filled: true,
              //           fillColor: Colors.white,
              //         ),
              //         value: Client,
              //         hint: const Text('Police Station Name '),
              //         // ignore: invalid_use_of_protected_member
              //         items: clientGet.clientRegGet.value.policestation
              //             .map((items) {
              //           return DropdownMenuItem(
              //             value: items,
              //             child: Text(items.mastername.toString()),
              //           );
              //         }).toList(),
              //         onChanged: (val) {
              //           setState(() {
              //             val.toString();
              //             // districtController.districtData(val);
              //           });
              //         }),
              //   ),
              // ),
              SizedBox(height: heigh * 0.02),
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: matterInvolvedController,

                  decoration: InputDecoration(
                    label: Text(
                      'Matter involved U/S'.tr,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.fromLTRB(15, 10, 5, 5),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  // maxLines: 3,
                  // minLines: 3,
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(height: heigh * 0.02),
              Obx(
                () => Visibility(
                  visible: clientGet.clientRegGet.value.councelFor != null,
                  child: DropdownButtonFormField(
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
                      value: Client,
                      hint: const Text('Councel For'),
                      // ignore: invalid_use_of_protected_member
                      items:
                          clientGet.clientRegGet.value.councelFor.map((items) {
                        return DropdownMenuItem(
                          value: items.id,
                          child: Text(items.mastername.toString()),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          councelfor = val.toString();
                          // districtController.districtData(val);
                        });
                      }),
                ),
              ),

              SizedBox(height: heigh * 0.02),

              Obx(
                () => Visibility(
                  visible: clientGet.clientRegGet.value.state != null,
                  child: DropdownButtonFormField(
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
                      value: Client,
                      hint: const Text('State Name'),
                      // ignore: invalid_use_of_protected_member
                      items: clientGet.clientRegGet.value.state!.map((items) {
                        return DropdownMenuItem(
                          value: items.id,
                          child: Text(items.mastername.toString()),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          stateid = val.toString();
                          districtController.districtData(val);
                        });
                      }),
                ),
              ),
              SizedBox(height: heigh * 0.02),

              Obx(
                () => Visibility(
                  visible: districtController.districtList != null,
                  child: DropdownButtonFormField(
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
                    hint: const Text('District Name'),
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
              const Row(
                children: [
                  Text(
                    'Personal Details',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              SizedBox(height: heigh * 0.02),
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: clientNameController,
                  decoration: InputDecoration(
                    label: Text(
                      'Name'.tr,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    contentPadding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
                    //border: InputBorder.none,
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
                  controller: mobileNoController,
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
                  controller: cityController,
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
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  controller: addressController,
                  decoration: InputDecoration(
                    label: Text(
                      'Address'.tr,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.fromLTRB(15, 10, 5, 5),
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

              //  SizedBox(height: heigh * .02),

              ////////////////////Button///////////
              Obx(
                () => RoundButton(
                  height: 50,
                  width: 250,
                  title: 'Submit'.tr,
                  loading: clientRegisCr.loading.value,
                  //onPress: () => Get.to(() => const ClientsScreen()),
                  onPress: () {
                    //final caseCategory = caseCategoryController.text;
                    final caseTitle = caseTitleController.text;
                    final courtName = courtNameController.text;
                    //final natureofCase = natureofCaseController.text;
                    final caseNo = caseNoYearController.text;
                    final firno = firnoController.text;
                    final year = yesrController.text;
                    final policeStationName = policeStationNameController.text;
                    final matterInvolved = matterInvolvedController.text;
                    //final councelfor = councelForController.text;
                    // final stateid = stateidController.text;
                    // final districtid = districtidController.text;
                    final clientName = clientNameController.text;
                    final mobileNo = mobileNoController.text;
                    final emailid = emailidController.text;
                    final city = cityController.text;
                    final address = addressController.text;
////////////////////////////////////////////////////////////////////////////////////////
                    caseCategoryController.clear();
                    caseTitleController.clear();
                    courtNameController.clear();
                    natureofCaseController.clear();
                    caseNoYearController.clear();
                    firnoController.clear();
                    yesrController.clear();
                    policeStationNameController.clear();
                    matterInvolvedController.clear();
                    councelForController.clear();
                    stateidController.clear();
                    districtidController.clear();
                    clientNameController.clear();
                    mobileNoController.clear();
                    emailidController.clear();
                    cityController.clear();
                    addressController.clear();
/////////////////////////////////////////////////////////
                    clientRegisCr.clientRegis(
                      caseCategory,
                      caseTitle,
                      courtName,
                      natureofCase,
                      caseNo,
                      firno,
                      year,
                      policeStationName,
                      matterInvolved,
                      councelfor,
                      stateid,
                      districtid,
                      clientName,
                      mobileNo,
                      emailid,
                      city,
                      address,
                    );
                  },
                  child: const Text("data"),
                ),
              ),

              SizedBox(height: heigh * 0.05),
            ],
          ),
        ),
      ),
      //   ),
    );
  }
}
