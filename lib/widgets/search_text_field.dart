import 'package:demo_task/utils/constants.dart';
import 'package:demo_task/utils/dimens.dart';
import 'package:demo_task/utils/palettes.dart';
import 'package:demo_task/utils/strings.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  final TextEditingController tcSearch;
  final Function onChanged;
  final Function onSearch;

  const SearchTextField({
    super.key,
    required this.onChanged,
    required this.onSearch,
    required this.tcSearch,
  });

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {

  @override
  Widget build(BuildContext context) {
    return _searchTextField();
  }

  Widget _searchTextField() {
    return Container(
      height: kTextTabBarHeight,
      decoration:
          BoxDecoration(color: Colors.white, borderRadius: Constants.radius10),
      margin: EdgeInsets.all(Dimens.screenWidth * 0.05),
      child: TextFormField(
        controller: widget.tcSearch,
        decoration: InputDecoration(
          enabledBorder: Constants.textFieldOutlineBorder,
          focusedBorder: Constants.textFieldOutlineBorder,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          suffixIcon: Container(
            height: kTextTabBarHeight,
            decoration: BoxDecoration(
              color: Palettes.colorPrimary,
              borderRadius: Constants.radius10.copyWith(
                topLeft: const Radius.circular(0),
                bottomLeft: const Radius.circular(0),
              ),
            ),
            child: InkWell(
              onTap: () => widget.onSearch(),
              child: const Icon(
                Icons.search,
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
          hintText: Strings.searchByName,
        ),
        onChanged: (value) => widget.onChanged(value),
        textInputAction: TextInputAction.done,
        cursorColor: Palettes.colorGrey,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
