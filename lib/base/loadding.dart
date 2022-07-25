import 'package:flutter/material.dart';

loadingFullScreen() => Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white.withOpacity(0.6),
      alignment: Alignment.center,
      child: CircularProgressIndicator(),
    );
loadMore() => Container(
      width: double.infinity,
      height: 40,
      color: Colors.white.withOpacity(0.6),
      alignment: Alignment.center,
      child: CircularProgressIndicator(),
    );
