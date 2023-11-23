

import 'dart:async';
import 'dart:developer';
import 'package:starter_pack/services/frappe_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


import '../constants/color.dart';

class FrappeLookupField extends StatelessWidget {
  final String doctype;
  final TextEditingController? textEditingController;
  final String label;
  final String? searchField;
   Function ? onChange ;
   FrappeLookupField(
      {super.key,
      this.searchField,
      required this.doctype,
      required this.label,
      this.onChange,
      this.textEditingController}
      );

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      controller: textEditingController,
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return LookupBottomSheet(
              searchField: searchField,
              onSelect: (value) {
                if (textEditingController != null) {
                  textEditingController!.text = value;
                }
                log(value);
                Navigator.pop(context);
              },
              onChange: onChange,
              doctype: doctype,
              label: label,
            );
          },
        );
      },
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: txtBorderColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: txtBorderColor)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: txtBorderColor)),
        suffixIcon: IconButton(
            onPressed: () {
              if (textEditingController != null) {
                textEditingController!.text = "";
              }
            },
            icon: const Icon(Icons.close)),
        labelText: label,
      ),
    );
  }
}

class LookupBottomSheet extends ConsumerStatefulWidget {
  final String doctype;
  final String label;
  final String? searchField;
  final Function? onSelect;
    final Function? onChange;
 
  const LookupBottomSheet(
      {super.key, 
      required this.label,
      required this.doctype,
      this.onSelect,
      this.searchField,
      this.onChange
      });

  @override
  ConsumerState<LookupBottomSheet> createState() => _LookupBottomSheetState();
}

class _LookupBottomSheetState extends ConsumerState<LookupBottomSheet> {
    // FrappeController frappeController = Get.find<FrappeController>();
  TextEditingController searchValueController = TextEditingController(text: "");
  bool loading = true;
  List<dynamic> data = [];
  String error = "";
  Timer? _debounce;

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      fetchData();
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void fetchData() async {
    setState(() {
      loading = true;
    });

    try {
      var response = await ref.read(frappeProvider.notifier).getList(

           widget.doctype,
           orderBy: 'creation%20asc',
          filters: [
            [
              widget.searchField ?? "name",
              "like",
              "%${searchValueController.text}%"
            ]
          ],
          fields: {"name", widget.searchField ?? "name"}.toList());
      setState(() {
        data = response.data['data'];
        error = "";
        loading = false;
      });

    } on Error catch (e) {
      setState(() {
        error = e.toString();
        data = [];
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          leading: GestureDetector(
            onTap: (){
              log(data.toString());
              GoRouter.of(context).pop();
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
          backgroundColor: Colors.transparent,
          title: Text(widget.label,style: TextStyle(color: Colors.black),),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
              onChanged: _onSearchChanged,
              controller: searchValueController,
              decoration: const InputDecoration(
                  labelText: "Search", border: OutlineInputBorder())),
        ),
        Expanded(
            child: Container(
          child: (loading
              ? const SizedBox(
                  height: 200,
                  child: Center(
                    child: Text("Loading..."),
                  ))
              : data.isNotEmpty
                  ? ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(data[index][widget.searchField ?? 'name']),
                        onTap: () { 
                        widget.onSelect!(data[index]['name']);
                        widget.onChange!(data[index]['name']??'default');
                        }
                      ),
                    )
                  : Text(error.toString())),
        )),
      ],
    );
  }
}