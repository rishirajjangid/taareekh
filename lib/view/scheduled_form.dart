import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tr/res/components/round_button.dart';

class ScheduledForm extends StatefulWidget {
  const ScheduledForm({super.key});

  @override
  State<ScheduledForm> createState() => _ScheduledFormState();
}

class _ScheduledFormState extends State<ScheduledForm> {
  bool isChecked = false;
  var checkedResult = 'Checkbox is CHECKED';
  void toggleCheckbox(bool value) {
    if (isChecked == false) {
      // Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked = true;
        checkedResult = 'Checkbox is CHECKED';
      });
    } else {
      // Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked = false;
        checkedResult = 'Checkbox is UN-CHECKED';
      });
    }
  }

  late DateTime pickedDate;
  late TimeOfDay time;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pickedDate = DateTime.now();
    time = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height * 1;
    final widt = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: const Color(0xFFEBEDF0),
      appBar: AppBar(
        title: Text(
          'Date Scheduled',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        // backgroundColor: Color(0xFF1E336A),
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
                  //controller: cityController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      //return "Please Enter a Client name";
                    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Please Enter a Client name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text(
                      'Client name'.tr,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),

              SizedBox(height: heigh * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: widt * 0.50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: Text(
                        "Date: ${pickedDate.year}/${pickedDate.month}/${pickedDate.day}",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      // contentPadding: EdgeInsets.only(top: 0.2, bottom: 0.1),
                      dense: true,
                      trailing: Icon(Icons.keyboard_arrow_down),
                      onTap: _pickDate,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: widt * 0.40,
                    //padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: Text(
                        "Time: ${time.hour}:${time.minute}",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      dense: true,
                      trailing: Icon(Icons.keyboard_arrow_down),
                      onTap: _pickTime,
                    ),
                  ),
                ],
              ),

              SizedBox(height: heigh * 0.02),
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  //controller: cityController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      // return "Please Enter a Court name";
                    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Please Enter a Court name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text(
                      'Court name'.tr,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
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
                  //controller: cityController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      //return "Please Enter a Detalis";
                    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Please Enter a Detalis";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text(
                      'Detalis'.tr,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.fromLTRB(15, 15, 5, 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  maxLines: 5,
                  minLines: 5,
                ),
              ),

              // ListView.builder(
              //     shrinkWrap: true,
              //     physics: ScrollPhysics(),
              //     itemCount: 1,
              //     itemBuilder: (BuildContext context, int index) {
              //       // _controllers.add(new TextEditingController());
              //       return Container(
              //         child: TextField(
              //           textAlign: TextAlign.start,
              //           //  controller:   _controllers[index],
              //           autofocus: false,
              //           keyboardType: TextInputType.text,
              //         ),
              //       );
              //     }),

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
                        activeColor: Color(0xFF00bbf2),
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

              SizedBox(height: heigh * .05),

              ////////////////////Button///////////
              RoundButton(
                height: 50,
                width: 250,
                title: 'Submit'.tr,
                // loading: advRegisCr.loading.value,
                // onPress: () => Get.to(() => const ClientsScreen()),
                onPress: () {},
                child: const Text("data"),
              ),
              SizedBox(height: heigh * 0.02),
            ],
          ),
        ),
      ),
      //   ),
    );
  }

  _pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDate: pickedDate,
    );

    if (date != null)
      setState(() {
        pickedDate = date;
      });
  }

  _pickTime() async {
    TimeOfDay? t = await showTimePicker(context: context, initialTime: time);

    if (t != null)
      setState(() {
        time = t;
      });
  }
}
