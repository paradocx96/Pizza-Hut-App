import 'package:flutter/material.dart';
import 'package:pizzahut/modules/promos/models/custom_model.dart';

class CustomSelect extends StatefulWidget {
  final List<CustomModel> list;

  const CustomSelect({Key? key, required this.list}) : super(key: key);

  @override
  _CustomSelectState createState() => _CustomSelectState();
}

class _CustomSelectState extends State<CustomSelect> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 440,
      child: ListView.builder(
          itemCount: widget.list.length,
          itemExtent: 100,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: ListTile(
                    minLeadingWidth: 100,
                    onTap: () {},
                    title: Text(widget.list[index].name),
                    subtitle: Text(widget.list[index].size),
                    leading: Image(image: AssetImage(widget.list[index].flag)),
                  ),
                ),
              ),
            );
          }),
    );
  }
}