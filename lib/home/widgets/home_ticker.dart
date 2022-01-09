import 'dart:async';

import 'package:flutter/material.dart';

class TickerItem {
  final String symbol;
  final double percent;

  const TickerItem(this.symbol, this.percent);
}

class SectionTicker extends StatefulWidget {
  final List<TickerItem> _items = const [
    TickerItem('NASDAQ', -1.11),
    TickerItem('S&P 500', -0.40),
    TickerItem('DOW', -0.02),
    TickerItem('STOXX 50', 0.24),
    TickerItem('Gold', 0.46),
  ];

  const SectionTicker();

  @override
  State<SectionTicker> createState() {
    return _SectionTickerState();
  }
}

class _SectionTickerState extends State<SectionTicker> {
  final ScrollController _scrollController = ScrollController();
  Timer? _scrollTimer;
  static const int _animationDurationSeconds = 600;

  @override
  void initState() {
    super.initState();

    void _animation() {
      _scrollController.animateTo(
        _scrollController.offset + 30 * _animationDurationSeconds,
        duration: const Duration(seconds: _animationDurationSeconds),
        curve: Curves.linear,
      );
    }

    _scrollTimer = Timer.periodic(
        const Duration(seconds: _animationDurationSeconds),
        (_) => _animation());

    Future.delayed(const Duration(seconds: 0), () {
      _animation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 44,
        child: AbsorbPointer(
            absorbing: true,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                controller: _scrollController,
                itemBuilder: (_, index) =>
                    _TickerItem(widget._items[index % widget._items.length]))));
  }

  @override
  void dispose() {
    _scrollTimer?.cancel();
    super.dispose();
  }
}

class _TickerItem extends StatelessWidget {
  final TickerItem _item;

  const _TickerItem(this._item);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 24, 8),
        child: Row(children: [
          Text(_item.symbol, style: _textStyle(context)),
          const SizedBox(width: 8),
          _item.percent < 0
              ? const Icon(Icons.arrow_downward_outlined,
                  color: Colors.red, size: 16)
              : const Icon(Icons.arrow_upward_outlined,
                  color: Colors.greenAccent, size: 16),
          const SizedBox(width: 6),
          Text(_item.percent.abs().toStringAsFixed(2),
              style: _percentStyle(context,
                  _item.percent > 0 ? Colors.greenAccent : Colors.red)),
          const SizedBox(width: 6),
          Text('%',
              style: _percentStyle(context,
                  _item.percent > 0 ? Colors.greenAccent : Colors.red)),
        ]));
  }

  TextStyle? _textStyle(BuildContext context) =>
      Theme.of(context).textTheme.headline5?.copyWith(
          color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14);

  TextStyle? _percentStyle(BuildContext context, Color color) =>
      Theme.of(context).textTheme.subtitle1?.copyWith(
          fontFamily: 'DMSans',
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: 14);
}
