import 'package:flutter/material.dart';

class DisplayLarge extends StatelessWidget {
  final String label;

  const DisplayLarge(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.displayLarge;

    return Text(
      label,
      style: current,
    );
  }
}

class DisplayMedium extends StatelessWidget {
  final String label;

  const DisplayMedium(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.displayMedium;

    return Text(
      label,
      style: current,
    );
  }
}

class DisplaySmall extends StatelessWidget {
  final String label;

  const DisplaySmall(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.displaySmall;

    return Text(
      label,
      style: current,
    );
  }
}

class HeadlineLarge extends StatelessWidget {
  final String label;

  const HeadlineLarge(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.headlineLarge;

    return Text(
      label,
      style: current,
    );
  }
}

class HeadlineMedium extends StatelessWidget {
  final String label;

  const HeadlineMedium(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.headlineMedium;

    return Text(
      label,
      style: current,
    );
  }
}

class HeadlineSmall extends StatelessWidget {
  final String label;

  const HeadlineSmall(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.headlineSmall;

    return Text(
      label,
      style: current,
    );
  }
}

class TitleLarge extends StatelessWidget {
  final String label;

  const TitleLarge(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.titleLarge;

    return Text(
      label,
      style: current?.copyWith(
        color: Colors.white,
      ),
    );
  }
}

class TitleMedium extends StatelessWidget {
  final String label;

  const TitleMedium(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.titleMedium;

    return Text(
      label,
      style: current,
    );
  }
}

class TitleSmall extends StatelessWidget {
  final String label;

  const TitleSmall(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.titleSmall;

    return Text(
      label,
      style: current,
    );
  }
}

class BodyLarge extends StatelessWidget {
  final String label;

  const BodyLarge(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.bodyLarge;

    return Text(
      label,
      style: current,
    );
  }
}

class BodyMedium extends StatelessWidget {
  final String label;

  const BodyMedium(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.bodyMedium;

    return Text(
      label,
      style: current,
    );
  }
}

class BodySmall extends StatelessWidget {
  final String label;

  const BodySmall(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.bodySmall;

    return Text(
      label,
      style: current,
    );
  }
}

class LabelLarge extends StatelessWidget {
  final String label;

  const LabelLarge(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.labelLarge;

    return Text(
      label,
      style: current,
    );
  }
}

class LabelMedium extends StatelessWidget {
  final String label;

  const LabelMedium(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.labelMedium;

    return Text(
      label,
      style: current,
    );
  }
}

class LabelSmall extends StatelessWidget {
  final String label;

  const LabelSmall(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final current = textTheme.labelMedium;

    return Text(
      label,
      style: current,
    );
  }
}
