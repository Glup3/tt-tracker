import 'package:flutter/material.dart';
import 'package:tt_tracker/theme/custom_theme.dart';

class StyledDropdownButton extends StatelessWidget {
  final String value;
  final List<String> values;
  final Function onChanged;

  const StyledDropdownButton({
    Key key,
    @required this.value,
    @required this.values,
    @required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: CustomTheme.of(context).surfaceColor.withAlpha(255),
      ),
      child: DropdownButton<String>(
        value: value,
        style: TextStyle(
          color: CustomTheme.of(context).onSurfaceColor,
          fontSize: 28,
        ),
        onChanged: (value) => onChanged(value),
        items: values
            .map((name) => DropdownMenuItem<String>(
                  value: name,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 5,
                      bottom: 10,
                    ),
                    child: Text(name),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
