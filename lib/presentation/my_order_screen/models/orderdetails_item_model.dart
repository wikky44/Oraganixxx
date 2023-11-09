/// This class is used in the [orderdetails_item_widget] screen.
class OrderdetailsItemModel {OrderdetailsItemModel({this.date, this.orderNumber, this.amountText, this.details, this.id, }) { date = date  ?? "wed, 15 June 2022";orderNumber = orderNumber  ?? "Order 110523";amountText = amountText  ?? "30.00";details = details  ?? "Details";id = id  ?? ""; }

String? date;

String? orderNumber;

String? amountText;

String? details;

String? id;

 }
