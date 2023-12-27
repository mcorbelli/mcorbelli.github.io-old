import 'package:flutter/material.dart';

import 'package:toastification/toastification.dart';

class ToastArgs {
  final BuildContext context;
  final String title;
  final String? description;
  final ToastificationType? toastType;

  const ToastArgs({
    required this.context,
    required this.title,
    this.description,
    this.toastType,
  });

  ToastArgs copyWith({
    ToastificationType? toastType,
  }) {
    return ToastArgs(
        context: context,
        title: title,
        description: description,
        toastType: toastType ?? this.toastType,
    );
  }
}

class ToastService {
  static success(ToastArgs args) {
    _showToast(args.copyWith(
      toastType: ToastificationType.success,
    ));
  }

  static error(ToastArgs args) {
    _showToast(args.copyWith(
      toastType: ToastificationType.error,
    ));
  }

  static _showToast(ToastArgs args) {
    toastification.show(
      context: args.context,
      type: args.toastType,
      style: ToastificationStyle.flat,
      autoCloseDuration: const Duration(
        seconds: 5,
      ),
      title: args.title,
      description: args.description,
    );
  }
}
