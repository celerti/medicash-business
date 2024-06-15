import 'package:dashboard/controllers/users_controller.dart';
import 'package:dashboard/models/address.dart';
import 'package:dashboard/models/phone.dart';
import 'package:dashboard/models/user.dart';
import 'package:dashboard/widgets/form_params.dart';
import 'package:dashboard/widgets/form_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsersForm extends StatefulWidget {
  /* 
    TODO: refactor constructor so as to use this
    for both view and create actions
  */
  final bool viewAction;
  final User user;

  const UsersForm({super.key, this.viewAction = true, required this.user});

  @override
  State<UsersForm> createState() => _UsersFormState();
}

class _UsersFormState extends State<UsersForm> {
  final UsersController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    // final screenWidth = Get.context!.size?.width;
    List<FormParams> formParamsList = [
      FormParams(
          fieldName: "Nome",
          fieldValue: widget.user.fullName!,
          fieldHeight: 100,
          fieldWidth: 100,
          icon: Icons.person,
          onChanged: (value) {
            widget.user.fullName = value;
            controller.patchRequest.value.fullName = value;
          }),
      FormParams(
          fieldName: "Nome de usuário",
          fieldValue: widget.user.userName != null ? widget.user.userName! : '',
          fieldHeight: 100,
          fieldWidth: 100,
          icon: Icons.badge_outlined,
          onChanged: (value) {
            widget.user.userName = value;
            controller.patchRequest.value.userName = value;
          }),
      FormParams(
          fieldName: "E-mail",
          fieldValue: "medicashappuser@gmail.com", // TODO
          fieldHeight: 100,
          fieldWidth: 100,
          icon: Icons.email_outlined,
          onChanged: (value) {
            widget.user.email = value;
            controller.patchRequest.value.email = value;
          }),
      FormParams(
          fieldName: "Telefone",
          fieldValue: widget.user.phone?.phoneNumber != null
              ? widget.user.phone!.phoneNumber!
              : "",
          fieldHeight: 100,
          fieldWidth: 100,
          icon: Icons.phone_rounded,
          onChanged: (value) {
            print(value);
            widget.user.phone?.phoneNumber = value;
            controller.patchRequest.value.phone ??= Phone();
            controller.patchRequest.value.phone?.phoneNumber = value;
          }),
      FormParams(
          fieldName: "Endereço",
          fieldValue: widget.user.address?.streetAddress != null
              ? widget.user.address!.streetAddress!
              : "",
          fieldHeight: 100,
          fieldWidth: 100,
          icon: Icons.location_on_outlined,
          onChanged: (value) {
            widget.user.address?.streetAddress = value;
            controller.patchRequest.value.address ??= Address();
            controller.patchRequest.value.address?.streetAddress = value;
          }),
      FormParams(
          fieldName: "Número",
          fieldValue: widget.user.address?.addressNumber != null
              ? widget.user.address!.addressNumber!
              : "",
          fieldHeight: 100,
          fieldWidth: 100,
          icon: Icons.house_rounded,
          onChanged: (value) {
            widget.user.address?.addressNumber = value;
            controller.patchRequest.value.address ??= Address();
            controller.patchRequest.value.address?.addressNumber = value;
          }),
      FormParams(
          fieldName: "Complemento",
          fieldValue: widget.user.address?.complement != null
              ? widget.user.address!.complement!
              : "",
          fieldHeight: 100,
          fieldWidth: 100,
          icon: Icons.label_outline_rounded,
          onChanged: (value) {
            widget.user.address?.complement = value;
            controller.patchRequest.value.address ??= Address();
            controller.patchRequest.value.address?.complement = value;
          }),
      FormParams(
          fieldName: "Cidade",
          fieldValue: widget.user.address?.city != null
              ? widget.user.address!.city!
              : "",
          fieldHeight: 100,
          fieldWidth: 100,
          icon: Icons.location_city,
          onChanged: (value) {
            widget.user.address?.city = value;
            controller.patchRequest.value.address ??= Address();
            controller.patchRequest.value.address?.city = value;
          }),
      FormParams(
          fieldName: "Estado (UF)",
          fieldValue: widget.user.address?.state != null
              ? widget.user.address!.state!
              : "",
          fieldHeight: 100,
          fieldWidth: 100,
          icon: Icons.flag_outlined,
          onChanged: (value) {
            widget.user.address?.state = value;
            controller.patchRequest.value.address ??= Address();
            controller.patchRequest.value.address?.state = value;
          }),
      FormParams(
          fieldName: "País",
          fieldValue: widget.user.address?.country != null
              ? widget.user.address!.country!
              : "",
          fieldHeight: 100,
          fieldWidth: 100,
          icon: Icons.flag_rounded,
          onChanged: (value) {
            widget.user.address?.country = value;
            controller.patchRequest.value.address ??= Address();
            controller.patchRequest.value.address?.country = value;
          }),
      FormParams(
          fieldName: "CEP",
          fieldValue: widget.user.address?.country != null
              ? widget.user.address!.country!
              : "",
          fieldHeight: 100,
          fieldWidth: 100,
          icon: Icons.location_pin,
          onChanged: (value) {
            widget.user.address?.country = value;
            controller.patchRequest.value.address ??= Address();
            controller.patchRequest.value.address?.zipCode = value;
          }),
    ];
    return Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400,
                mainAxisExtent: 100,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: formParamsList.length,
            itemBuilder: (context, index) {
              var formParams = formParamsList[index];
              return FormWidget(
                width: formParams.fieldWidth,
                height: formParams.fieldHeight,
                icon: formParams.icon,
                fieldName: formParams.fieldName,
                fieldValue: formParams.fieldValue,
                viewAction: widget.viewAction,
                onChanged: formParams.onChanged,
              );
            }));
  }
}
