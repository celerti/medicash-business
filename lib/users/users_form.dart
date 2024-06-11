import 'package:dashboard/models/user.dart';
import 'package:dashboard/widgets/form_params.dart';
import 'package:dashboard/widgets/form_widget.dart';
import 'package:flutter/material.dart';

class UsersForm extends StatelessWidget {
  /* 
    TODO: refactor constructor so as to use this
    for both view and create actions
  */
  final bool viewAction;
  final User user;
  final Function(User)? onChangedUser;

  const UsersForm({
    super.key,
    this.viewAction=true,
    required this.user,
    required this.onChangedUser
  });

  @override
  Widget build(BuildContext context) {
    // final screenWidth = Get.context!.size?.width;
    List<FormParams> formParamsList = [
    FormParams(
        fieldName: "Nome",
        fieldValue: user.fullName!, // TODO
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.person,
        onChanged: (value) {
          user.fullName = value;
          if (onChangedUser != null) onChangedUser!(user);
        }
      ),
      FormParams(
        fieldName: "Nome de usuário",
        fieldValue: user.userName!= null ? user.userName! : '',
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.badge_outlined,
        onChanged: (value) {
          user.userName = value;
          if (onChangedUser != null) onChangedUser!(user);
        }
      ),
      FormParams(
        fieldName: "E-mail",
        fieldValue: "medicashappuser@gmail.com", // TODO
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.email_outlined,
        onChanged: (value) {
          user.email = value;
          if (onChangedUser != null) onChangedUser!(user);
        }
      ),
      FormParams(
        fieldName: "Telefone",
        fieldValue: user.phone?.phoneNumber != null ? user.phone!.phoneNumber! : "",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.phone_rounded,
        onChanged: (value) {
          user.phone?.phoneNumber = value;
          if (onChangedUser != null) onChangedUser!(user);
        }
      ),
      FormParams(
        fieldName: "Endereço",
        fieldValue: user.address?.streetAddress != null ? user.address!.streetAddress! : "",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.location_on_outlined,
        onChanged: (value) {
          user.address?.streetAddress = value;
          if (onChangedUser != null) onChangedUser!(user);
        }
      ),
      FormParams(
        fieldName: "Número",
        fieldValue: user.address?.addressNumber != null ? user.address!.addressNumber! : "",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.house_rounded,
        onChanged: (value) {
          user.address?.addressNumber = value;
          if (onChangedUser != null) onChangedUser!(user);
        }
      ),
      FormParams(
        fieldName: "Complemento",
        fieldValue: user.address?.complement != null ? user.address!.complement! : "",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.label_outline_rounded,
        onChanged: (value) {
          user.address?.complement = value;
          if (onChangedUser != null) onChangedUser!(user);
        }
      ),
      FormParams(
        fieldName: "Cidade",
        fieldValue: user.address?.city != null ? user.address!.city! : "",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.location_city,
        onChanged: (value) {
          user.address?.city = value;
          if (onChangedUser != null) onChangedUser!(user);
        }
      ),
      FormParams(
        fieldName: "Estado (UF)",
        fieldValue: user.address?.state != null ? user.address!.state! : "",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.flag_outlined,
        onChanged: (value) {
          user.address?.state = value;
          if (onChangedUser != null) onChangedUser!(user);
        }
      ),
      FormParams(
        fieldName: "País",
        fieldValue: user.address?.country != null ? user.address!.country! : "",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.flag_rounded,
        onChanged: (value) {
          user.address?.country = value;
          if (onChangedUser != null) onChangedUser!(user);
        }
      ),
      FormParams(
        fieldName: "CEP",
        fieldValue: user.address?.country != null ? user.address!.country! : "",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.location_pin,
        onChanged: (value) {
          user.address?.country = value;
          if (onChangedUser != null) onChangedUser!(user);
        }
      ),
    ];
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          mainAxisExtent: 100,
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        itemCount: formParamsList.length,
        itemBuilder: (context, index) {
          var formParams = formParamsList[index];
          return FormWidget(
            width: formParams.fieldWidth,
            height: formParams.fieldHeight,
            icon: formParams.icon,
            fieldName: formParams.fieldName,
            fieldValue: formParams.fieldValue,
            viewAction: viewAction,
            onChanged: formParams.onChanged,
          );
        }
      )
    );
  }
}