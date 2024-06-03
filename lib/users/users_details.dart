import 'package:dashboard/controllers/users_controller.dart';
import 'package:dashboard/users/users_form.dart';
import 'package:dashboard/widgets/action_button.dart';
import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsersDetails extends StatefulWidget {
  const UsersDetails({super.key});

  @override
  State<UsersDetails> createState() => _UsersDetailsState();
}

class _UsersDetailsState extends State<UsersDetails> {

  late bool _isEditAction;

  @override
  void initState() {
    super.initState();
    _isEditAction = false;
  }

  @override
  Widget build(BuildContext context) {
    final UsersController controller = Get.find();
    double screenWidth = context.width;
    bool isMediumSize = screenWidth > 1000;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Flexible(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.deepPurpleAccent,
                          width: 2
                        )
                      ),
                      child: ActionButton(
                        icon: Icons.arrow_back_rounded,
                        onTap: () => controller.toMain(),
                        color: Colors.deepPurpleAccent
                      ),
                    ),
                    DashboardText(
                      text: "Cadastro de usuário",
                      fontFamily: "Noto Sans",
                      size: isMediumSize ? 30 : 16,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                    ),
                    Expanded(child: Container()),
                    ActionButton(
                      icon: _isEditAction ? Icons.save : Icons.edit,
                      onTap: () {
                        setState(() {
                          _isEditAction = !_isEditAction;
                        });
                      },
                      color: Colors.deepPurple[300],
                      onHoverColor: Colors.deepPurpleAccent,
                      onTriggerColor: Colors.deepPurpleAccent
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 4,
                child: UsersForm(
                  viewAction: !_isEditAction,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}