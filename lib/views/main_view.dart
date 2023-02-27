import 'package:flutter/material.dart';
import 'package:hostingwebinarui/components/components.dart';
import 'package:hostingwebinarui/models/webinar_text.dart';
import 'package:hostingwebinarui/widgets/webinar_checkbox.dart';
import 'package:hostingwebinarui/widgets/webinar_textfield.dart';

class HostingWebinarUI extends StatefulWidget {
  const HostingWebinarUI({super.key});

  @override
  State<HostingWebinarUI> createState() => _HostingWebinarUIState();
}

class _HostingWebinarUIState extends State<HostingWebinarUI> {
  var onlineWebinarCheckBox = false;
  var termsAndConditionsCheckBox = false;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HostingWebinarUI oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      width: deviceWidth,
      height: deviceHeight,
      decoration: const BoxDecoration(
        color: WebinarColors.background,
      ),
      child: Center(
        child: Container(
          width: deviceWidth / 1.15,
          height: deviceHeight - 150.0,
          decoration: BoxDecoration(
            color: WebinarColors.card,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const WebinarText(
                text: 'Want to host a webinar?',
                size: 26.0,
                color: WebinarColors.text,
                weight: FontWeight.w600,
              ),
              const SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const WebinarText(
                    text: "Fill the details below and we'll take you to",
                    size: 14.2,
                    color: WebinarColors.text,
                    weight: FontWeight.normal,
                  ),
                  const WebinarText(
                    text: "a detailed where you can add more",
                    size: 14.2,
                    color: WebinarColors.text,
                    weight: FontWeight.normal,
                  ),
                  const WebinarText(
                    text: "information about your webinar.",
                    size: 14.2,
                    color: WebinarColors.text,
                    weight: FontWeight.normal,
                  ),
                  const SizedBox(height: 35.0),
                  const WebinarText(
                    text: 'Location',
                    size: 18.0,
                    color: WebinarColors.text,
                    weight: FontWeight.normal,
                  ),
                  const SizedBox(height: 5.0),
                  WebinarTextField(
                    controller: _controller,
                    deviceWidth: deviceWidth,
                    hint: 'Enter location name',
                    icon: Icons.my_location_rounded,
                  ),
                  const SizedBox(height: 10.0),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Material(
                      color: Colors.transparent,
                      child: Transform.scale(
                        scale: 1.1,
                        child: WebinarUICheckBox(
                          width: 55.0,
                          height: 55.0,
                          value: onlineWebinarCheckBox,
                          checkedIcon: Icons.done_outline_rounded,
                          uncheckedIcon: Icons.circle_outlined,
                          uncheckedIconColor: Colors.transparent,
                          uncheckedFillColor: Colors.transparent,
                          checkedFillColor: Colors.transparent,
                          borderWidth: 1.0,
                          splashRadius: 0.1,
                          shouldShowBorder: true,
                          borderColor: WebinarColors.text,
                          checkBoxIconSize: 25.0,
                          borderRadius: 8.0,
                          checkedIconColor: WebinarColors.redAccent,
                          onChanged: (value) {
                            setState(() {
                              onlineWebinarCheckBox = value;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    const WebinarText(
                      text: 'Online webinar',
                      size: 18.0,
                      color: WebinarColors.text,
                      weight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WebinarText(
                    text: 'Date',
                    size: 18.0,
                    color: WebinarColors.text,
                    weight: FontWeight.normal,
                  ),
                  const SizedBox(height: 5.0),
                  WebinarTextField(
                    controller: _controller,
                    deviceWidth: deviceWidth,
                    hint: 'June 21, 2023',
                    icon: Icons.calendar_month_rounded,
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WebinarText(
                    text: 'Time',
                    size: 18.0,
                    color: WebinarColors.text,
                    weight: FontWeight.normal,
                  ),
                  const SizedBox(height: 5.0),
                  WebinarTextField(
                    controller: _controller,
                    deviceWidth: deviceWidth,
                    hint: '9:00 AM',
                    icon: Icons.access_time_rounded,
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                          color: Colors.transparent,
                          child: WebinarUICheckBox(
                            width: 30.0,
                            height: 60.0,
                            value: termsAndConditionsCheckBox,
                            checkedIcon: Icons.done_outline_rounded,
                            uncheckedIcon: Icons.circle_outlined,
                            uncheckedIconColor: Colors.transparent,
                            uncheckedFillColor: Colors.transparent,
                            checkedFillColor: Colors.transparent,
                            borderWidth: 1.0,
                            splashRadius: 0.1,
                            shouldShowBorder: true,
                            borderColor: WebinarColors.text,
                            checkBoxIconSize: 25.0,
                            borderRadius: 8.0,
                            checkedIconColor: WebinarColors.redAccent,
                            onChanged: (value) {
                              setState(() {
                                termsAndConditionsCheckBox = value;
                              });
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      WebinarText(
                                        text: 'I have read and agree to the',
                                        size: 14.0,
                                        color: WebinarColors.text,
                                        weight: FontWeight.normal,
                                      ),
                                      SizedBox(width: 2.0),
                                      WebinarText(
                                        text: 'Terms &',
                                        size: 14.0,
                                        color: WebinarColors.redAccent,
                                        weight: FontWeight.normal,
                                      ),
                                    ],
                                  ),
                                  WebinarText(
                                    text: 'Conditions',
                                    size: 14.0,
                                    color: WebinarColors.redAccent,
                                    weight: FontWeight.normal,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 180.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: WebinarColors.redAccent,
                      borderRadius: BorderRadius.circular(3.5),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(3.5),
                        onTap: () {},
                        child: const Center(
                          child: WebinarText(
                            color: WebinarColors.text,
                            size: 20.0,
                            text: 'Continue',
                            weight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 70.0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
