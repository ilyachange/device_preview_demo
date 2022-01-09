import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 16),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Container(
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 12, 20),
                    child: Row(children: [
                      const Icon(Icons.search),
                      const SizedBox(width: 8),
                      Text('Search for any stock or company',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 13)),
                      const Expanded(child: SizedBox.shrink()),
                      const Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey),
                    ])))));
  }
}
