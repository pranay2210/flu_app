import 'package:tiara_app/db/localDB/my_database.dart';
import 'package:tiara_app/models/PriceDetailsView.dart';
import 'package:tiara_app/models/classificationModel/ClassificationView.dart';
import 'package:tiara_app/models/name_value_view.dart';
import 'package:tiara_app/models/stoneModel/StoneDetailsView.dart';
import 'package:tiara_app/models/variations_view.dart';

class MockDataSource {
  static List<ClasificationView> getClassificationDataList() {
    return [
      new ClasificationView("item1", "img1"),
      new ClasificationView("item2", "img27"),
      new ClasificationView("item3", "img3"),
      new ClasificationView("item4", "img4"),
      new ClasificationView("item5", "img5"),
      new ClasificationView("item6", "img6"),
      new ClasificationView("item7", "img7"),
      new ClasificationView("item8", "img8"),
      new ClasificationView("item9", "img9"),
      new ClasificationView("item10", "img10")
    ];
  }

  static List<ClasificationView> getFirstClassificationDataList() {
    return [
      new ClasificationView("itemU1", "img1"),
      new ClasificationView("itemU2", "img27"),
      new ClasificationView("itemU3", "img3"),
      new ClasificationView("itemU4", "img4"),
      new ClasificationView("itemU5", "img5"),
      new ClasificationView("itemU6", "img6"),
      new ClasificationView("itemU7", "img7"),
      new ClasificationView("itemU8", "img8"),
      new ClasificationView("itemU9", "img9"),
      new ClasificationView("itemU10", "img10")
    ];
  }

  static List<ClasificationView> getSecondClassificationDataList() {
    return [
      new ClasificationView("itemUT1", "img1"),
      new ClasificationView("itemUT2", "img27"),
      new ClasificationView("itemUT3", "img3"),
      new ClasificationView("itemUT4", "img4"),
      new ClasificationView("itemUT5", "img5"),
      new ClasificationView("itemUT6", "img6"),
      new ClasificationView("itemUT7", "img7"),
      new ClasificationView("itemUT8", "img8"),
      new ClasificationView("itemUT9", "img9"),
      new ClasificationView("itemUT10", "img10")
    ];
  }

  static List<PriceDetailsView> getPriceDetailsDataList() {
    return [
      new PriceDetailsView("Diamond", "\$3222"),
      new PriceDetailsView("Material Price", "\$2334"),
      new PriceDetailsView("Stone Range Rate", "\$3222"),
      new PriceDetailsView("Stone Price", "\$230"),
      new PriceDetailsView("Diamond Price", "\$140"),
      new PriceDetailsView("Labor Price", "\$335"),
      new PriceDetailsView("Semi Finished Price", "\$22"),
      new PriceDetailsView("Misc. Price", "\$134"),
    ];
  }

  static List<StoneDetailsView> getStoneDetailsDataList() {
    return [
      new StoneDetailsView("Type", "Is Diamond", "Cut", "Color", "Clarity",
          "Carats", "UOM", "Shape", "Lab", "Certificate"),
      new StoneDetailsView("Diamond", "TRUE", "GD", "E", "VVS1", "0.9", "cts",
          "MAQ", "GIA", "21466697395"),
      new StoneDetailsView("Emeral", "FALSE", "EX", "E", "VVS1", "0.4", "rts",
          "RND", "GIA", "12334343444"),
      new StoneDetailsView("Saphire", "TRUE", "EX", "D", "VVS1", "0.4", "cts",
          "MAQ", "GIA", "32245666666"),
      new StoneDetailsView("Diamond", "FALSE", "GD", "E", "VVS1", "0.6", "rts",
          "RND", "GIA", "35535566776"),
      /* new StoneDetailsView("Ruby", "FALSE", "GD", "E", "VVS1", "0.3", "cts",
          "RND", "GIA", "21466697395"),
      new StoneDetailsView("Emerald", "TRUE", "GD", "E", "VVS1", "0.4", "cts",
          "MAQ", "GIA", "21466697395"),
      new StoneDetailsView("Saphire", "FALSE", "GD", "E", "VVS1", "0.3", "cts",
          "RND", "GIA", "21466697395"),
      new StoneDetailsView("Ruby", "TRUE", "EX", "E", "VVS1", "0.4", "cts",
          "RND", "GIA", "21466697395"),*/
    ];
  }

  static List<StoneDetailsView> getCenterDetailsDataList() {
    return [
      new StoneDetailsView("Type", "Is Diamond", "Cut", "Color", "Clarity",
          "Carats", "UOM", "Shape", "Lab", "Certificate"),
      new StoneDetailsView("Diamond", "TRUE", "GD", "E", "VVS1", "0.9", "cts",
          "MAQ", "GIA", "21466697395"),
    ];
  }

  static List<ClasificationView> getCategoriesList() {
    return [
      new ClasificationView("Bangles", "img1"),
      new ClasificationView("Earings", "img27"),
      new ClasificationView("Bracelet", "img3"),
      new ClasificationView("Ring", "img4"),
      new ClasificationView("Diamonds", "img5"),
      new ClasificationView("Gold Jewellery", "img6"),
      new ClasificationView("Ruby", "img7"),
      new ClasificationView("Orange Stone", "img8"),
      new ClasificationView("Green Stone", "img9"),
      new ClasificationView("Blue Stone", "img10")
    ];
  }

  /*static List<NameValueView> getBasic() {
    return [
      new NameValueView("RFID Tag", "IRYS001"),
      new NameValueView("Item ERP Key", "MatERPkey1"),
      new NameValueView("SKU Number", "IRYS001"),
      new NameValueView("Design Number", "BROO1"),
      new NameValueView("Material Name", "Gold 999"),
      new NameValueView("Material Purity", "24 KT"),
      new NameValueView("Material Description 1", "Lorem Impusm"),
      new NameValueView("Material Description 2", "Lorem Impusm"),
      new NameValueView("Metal Weight", "10"),
      new NameValueView("Material UOM", "gsm"),
      new NameValueView("Item Type", "BRC"),
      new NameValueView("Item Category", "Gold Plain"),
      new NameValueView("Size", "5"),
      new NameValueView("Quantity", "3"),
      new NameValueView("Other Weight", "5.4"),
      new NameValueView("Net Weight", "15.4"),
      new NameValueView("Company", "Irys"),
      new NameValueView("Location Name", "Pune"),
      new NameValueView("Bin Name", "Bin 1"),
      new NameValueView("Tray ID", "1"),
      new NameValueView("Material Reserved 1", "Irys"),
      new NameValueView("Item Description", "Lorem Ipsum"),
      new NameValueView("Miscellenious Type", "Package Box"),
      new NameValueView("Miscelleneous Description", "mishjh2"),
      new NameValueView("UOM(Misc)", "pcs"),
      new NameValueView("Tray Description", "Lorem Ipsum"),
      new NameValueView("Reserved 1", "res1"),
      new NameValueView("Reserved 2", "res2"),
    ];
  }*/

  static List<NameValueView> getBasicDetails(Item item) {
    return [
      new NameValueView("RFID Tag", formatDisplayValue(item.rfidTag)),
      new NameValueView("Item ERP Key", formatDisplayValue(item.itemERPKey)),
      new NameValueView("SKU Number", formatDisplayValue(item.skuNumber)),
      new NameValueView("Design Number", formatDisplayValue(item.designNumber)),
      // new NameValueView("Material Name", formatDisplayValue(item.materialCode)),//need to check
      //new NameValueView("Material Purity",formatDisplayValue(item.materialPurity)),
      new NameValueView(
          "Material Description 1", formatDisplayValue(item.skuNumber)),
      // Need to check
      new NameValueView(
          "Material Description 2", formatDisplayValue(item.skuNumber)),
      //
      //new NameValueView("Metal Weight", formatDisplayValue(item.alloyWeight)),// Need to check
      new NameValueView("Material UOM", formatDisplayValue(item.uom)),
      // Need to check
      new NameValueView("Item Type", formatDisplayValue(item.itemType)),
      new NameValueView("Item Category", formatDisplayValue(item.itemCategory)),
      new NameValueView("Size", formatDisplayValue(item.size)),
      new NameValueView(
          "Quantity", formatDisplayValue(item.quantity.toString())),
      new NameValueView("Other Weight", formatDisplayValue(item.otherWeight)),
      new NameValueView(
          "Net Weight", formatDisplayValue(item.netWeight.toString())),
      new NameValueView("Company", formatDisplayValue(item.company)),
      new NameValueView("Location Name", formatDisplayValue(item.locationID)),
      // Need to fetch from location
      // new NameValueView("Bin Name", formatDisplayValue(item.binID)), // Need to fetch from bin table
      new NameValueView(
          "Tray ID", formatDisplayValue(item.netWeight.toString())),
      // Need to check
      new NameValueView("Material Reserved 1", "Material Reserved 1"),
      // Need to check
      new NameValueView(
          "Item Description", formatDisplayValue(item.itemDescription)),
      new NameValueView("Miscellenious Type", "Package Box"),
      // Need to check
      new NameValueView("Miscelleneous Description", "mishjh2"),
      //
      new NameValueView("UOM(Misc)", formatDisplayValue(item.uomRef)),
      //
      new NameValueView("Tray Description", "Lorem Ipsum"),
      //
      new NameValueView("Reserved 1", formatDisplayValue(item.reserved1)),
      new NameValueView("Reserved 2", formatDisplayValue(item.reserved2)),
      new NameValueView("Reserved 3", formatDisplayValue(item.reserved3)),
      new NameValueView("Reserved 4", formatDisplayValue(item.reserved4)),
      new NameValueView("Reserved 5", formatDisplayValue(item.reserved5)),
    ];
  }

  static List<NameValueView> getSetDetails(Collection item) {
    return [
      new NameValueView("Collection Name", item.collectionName),
      new NameValueView("Collection Description", item.collectionDescription),
      new NameValueView("Reserved 1", formatDisplayValue(item.reserved1)),
      new NameValueView("Reserved 2", formatDisplayValue(item.reserved2)),
    ];
  }

  static List<VariationsView> getMockVariationView() {
    return [
      new VariationsView(
          "RFID Tag", ['IRYS001', 'IRYS002', 'IRYS003', 'IRYS004']),
      new VariationsView(
          "SKU Number", ['IRYS001', 'IRYS002', 'IRYS003', 'IRYS004']),
      new VariationsView(
          "Item ERP Key", ['erp key1', 'erp key2', 'erp key3', 'erp key4']),
      new VariationsView("Design Number", ['BR001', 'BR002', 'BR003', 'BR004']),
      new VariationsView(
          "Item Status", ['Instock', '02 Left', 'Sold Out', 'Sold Out']),
    ];
  }
}

String formatDisplayValue(String displayValue) {
  return (displayValue != null && displayValue != 'null')
      ? displayValue
      : '- -';
}
