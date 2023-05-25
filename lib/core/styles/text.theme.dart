import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
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
      tr(label),
      style: GoogleFonts.lato(
        textStyle: current,
      ),
    );
  }
}
