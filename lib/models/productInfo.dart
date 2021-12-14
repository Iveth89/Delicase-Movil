// To parse this JSON data, do
//
//     final ProductModel = ProductModelFromJson(jsonString);
import 'dart:convert';

List<ProductModel> productsModelFromJson(List<dynamic> jsonList){
  List<ProductModel> products = [];
  if (jsonList == null) return null;
  for (var item in jsonList) {
    final service = new ProductModel.fromJson(item);
    products.add(service);
  }
  return products;
}

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.prId,
    this.prNombre,
    this.prDescripcion,
    this.prCosto,
    this.prEstatus,
    this.prFechaCreacion,
    this.prImagen,
    this.tpId,
  });

  int prId;
  String prNombre;
  String prDescripcion;
  int prCosto;
  int prEstatus;
  String prFechaCreacion;
  String prImagen;
  int tpId;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        prId: json["pr_id"],
        prNombre: json["pr_nombre"],
        prDescripcion: json["pr_descripcion"],
        prCosto: json["pr_costo"],
        prEstatus: json["pr_estatus"],
        prFechaCreacion: json["pr_fechaCreacion"],
        prImagen: json["pr_imagen"],
        tpId: json["tp_id"],
      );

  Map<String, dynamic> toJson() => {
        "pr_Id": prId,
        "pr_Nombre": prNombre,
        "pr_Descripcion": prDescripcion,
        "pr_Costo": prCosto,
        "pr_Estatus": prEstatus,
        "pr_FechaCreacion": prFechaCreacion,
        "pr_Imagen": prImagen,
        "tp_Id": tpId,
      };
}
