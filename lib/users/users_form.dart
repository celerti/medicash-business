import 'package:dashboard/widgets/form_params.dart';
import 'package:dashboard/widgets/form_widget.dart';
import 'package:flutter/material.dart';

class UsersForm extends StatelessWidget {
  /* 
    TODO: refactor constructor so as to use this
    for both view and create actions
  */
  final bool viewAction;
  const UsersForm({
    super.key,
  this.viewAction=true});

  @override
  Widget build(BuildContext context) {
    // final screenWidth = Get.context!.size?.width;
    List<FormParams> formParamsList = const [
      FormParams(
        fieldName: "Produto",
        fieldValue: "Leader Laboratory",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.shopping_cart
      ),
      FormParams(
        fieldName: "Data",
        fieldValue: "31/05/2024",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.calendar_month
      ),
      FormParams(
        fieldName: "Loja",
        fieldValue: "MedicashApp Store",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.location_on
      ),
      FormParams(
        fieldName: "Nome do cliente",
        fieldValue: "MedicashApp Client",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.person
      ),
      FormParams(
        fieldName: "Forma de pagamento",
        fieldValue: "Leader Laboratory",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.payment
      ),
      FormParams(
        fieldName: "Valor",
        fieldValue: "R\$ 100,00",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.paid
      ),
      FormParams(
        fieldName: "Produto",
        fieldValue: "Leader Laboratory",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.badge
      ),
      FormParams(
        fieldName: "Produto",
        fieldValue: "Leader Laboratory",
        fieldHeight: 100,
        fieldWidth: 100,
        icon: Icons.currency_exchange
      )
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
          );
        }
      )
    );
  }
}