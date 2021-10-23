import 'package:airplane/models/model.dart';
import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final String id;
  final DestinationModel destinationModel;
  final int amountOfTraveler;
  final String selectedSeats;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModel(
      {this.id = "",
      required this.destinationModel,
      this.amountOfTraveler = 0,
      this.selectedSeats = '',
      this.insurance = false,
      this.refundable = false,
      this.vat = 0,
      this.price = 0,
      this.grandTotal = 0});

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) {
    print("ini json : ${json}");
    print(
        "hasilnya : ${TransactionModel(id: json["id"].toString(), destinationModel: DestinationModel.fromJson(json['destination']['id'], json['destination']), amountOfTraveler: json['amountOfTravaler'] as int, selectedSeats: json['selectedSeats'].toString(), insurance: json['insurance'] as bool, refundable: json['refundable'] as bool, vat: json['vat'] as double, price: json['price'] as int, grandTotal: json['grandTotal'] as int).toString()}");
    // return TransactionModel(
    //     id: json["id"].toString(),
    //     destinationModel: DestinationModel.fromJson(
    //         json['destination']['id'], json['destination']),
    //     amountOfTravaler: json['amountOfTravaler'] as int,
    //     selectedSeats: json['selectedSeats'].toString(),
    //     insurance: json['insurance'] as bool,
    //     refundable: json['refundable'] as bool,
    //     vat: json['vat'] as double,
    //     price: json['price'] as int,
    //     grandTotal: json['grandTotal'] as int);
    return TransactionModel(
      destinationModel: DestinationModel.fromJson(
          json['destination']['id'], json['destination']),
      id: id,
      amountOfTraveler: json['amountOfTraveler'],
      selectedSeats: json['selectedSeats'],
      insurance: json['insurance'],
      refundable: json['refundable'],
      vat: json['vat'],
      price: json['price'],
      grandTotal: json['grandTotal'],
    );
  }

  @override
  List<Object?> get props => [
        this.destinationModel,
        this.amountOfTraveler,
        this.selectedSeats,
        this.insurance,
        this.refundable,
        this.vat,
        this.price,
        this.grandTotal
      ];
}
