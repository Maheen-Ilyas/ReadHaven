import 'package:flutter/material.dart';
import 'package:readhaven/constants/theme.dart';

void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppTheme.backgroundColor,
        content: Text(
          message,
          style: TextStyle(
            color: AppTheme.secondaryTextColor,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
