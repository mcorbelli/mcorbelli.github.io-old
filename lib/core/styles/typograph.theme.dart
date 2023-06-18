import 'package:flutter/material.dart';

class DisplayLarge extends StatelessWidget {
  const DisplayLarge(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.displayLarge?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class DisplayMedium extends StatelessWidget {
  const DisplayMedium(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.displayMedium?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class DisplaySmall extends StatelessWidget {
  const DisplaySmall(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.displaySmall?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class HeadlineLarge extends StatelessWidget {
  const HeadlineLarge(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.headlineLarge?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class HeadlineMedium extends StatelessWidget {
  const HeadlineMedium(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.headlineMedium?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class HeadlineSmall extends StatelessWidget {
  const HeadlineSmall(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.headlineSmall?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class TitleLarge extends StatelessWidget {
  const TitleLarge(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.titleLarge?.merge(style);

    return Text(
      label,
      style: current?.copyWith(
        color: Colors.white,
      ),
    );
  }
}

class TitleMedium extends StatelessWidget {
  const TitleMedium(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.titleMedium?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class TitleSmall extends StatelessWidget {
  const TitleSmall(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.titleSmall?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class BodyLarge extends StatelessWidget {
  const BodyLarge(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.bodyLarge?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class BodyMedium extends StatelessWidget {
  const BodyMedium(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.bodyMedium?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class BodySmall extends StatelessWidget {
  const BodySmall(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.bodySmall?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class LabelLarge extends StatelessWidget {
  const LabelLarge(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.labelLarge?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class LabelMedium extends StatelessWidget {
  const LabelMedium(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.labelMedium?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}

class LabelSmall extends StatelessWidget {
  const LabelSmall(
    this.label, {
    this.style,
    super.key,
  });

  final String label;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.labelMedium?.merge(style);

    return Text(
      label,
      style: current,
    );
  }
}
