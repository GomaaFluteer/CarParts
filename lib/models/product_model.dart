import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
//// بعد متعمله انتظر عليه وبعدين اعمل رن واقف وافتح وسيبه ساعتين مثلا وبعدين رن تاني
class ProductModel {
  int _id;
  String _companyName;
  String _productName;
  String _productImage;
  String _carType;
  String _companyPhone;
  double _productCoast;
  int _numberOfItems;
  ProductModel(
      this._companyName,
      this._productName,
      this._productImage,
      this._carType,
      this._companyPhone,
      this._productCoast,
      this._numberOfItems);

  ProductModel.map(dynamic obj) {
    this._id = obj['id'];
    this._companyName = obj['companyName'];
    this._productName = obj['productName'];
    this._productImage = obj['productImage'];
    this._carType = obj['carType'];
    this._companyPhone = obj['companyPhone'];
    this._productCoast = obj['productCoast'];
    this._numberOfItems = obj['numberOfItems'];
  }

  int get id => _id;
  String get companyName => _companyName;
  String get productName => _productName;
  String get productImage => _productImage;
  String get carType => _carType;
  String get companyPhone => _companyPhone;
  double get productCoast => _productCoast;
  int get numberOfItems => _numberOfItems;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['companyName'] = _companyName;
    map['productName'] = _productName;
    map['productImage'] = _productImage;
    map['carType'] = _carType;
    map['companyPhone'] = _companyPhone;
    map['productCoast'] = _productCoast;
    map['numberOfItems'] = _numberOfItems;
    return map;
  } //map

  ProductModel.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._companyName = map['companyName'];
    this._productName = map['productName'];
    this._productImage = map['productImage'];
    this._carType = map['carType'];
    this._companyPhone = map['companyPhone'];
    this._productCoast = map['productCoast'];
    this._numberOfItems = map['numberOfItems'];
  }
}
//////////////////////////   Creat DataBase   //////////////////////////////

class DatabaseHelper {
  final String productTable = 'productTable';
  final String columnId = 'id';
  final String columnCompanyName = 'companyName';
  final String columnProductName = 'productName';
  final String columnProductImage = 'productImage';
  final String columnCarType = 'carType';
  final String columnCompanyPhone = 'companyPhone';
  final String columnProductCoast = 'productCoast';
  final String columnNumberOfItems = "numberOfItems";
  static Database _dp;

  Future<Database> get dp async {
    if (_dp != null) {
      return (_dp);
    } else {
      _dp = await intDB();
      return _dp;
    } //make database
  } // future

  Future<Database> intDB() async {
    // ignore: non_constant_identifier_names
    Directory documents = await getApplicationDocumentsDirectory();
    // directory out the application but inside the phone
    String path = join(documents.path, 'myDO dp'); //my dp is name of file
    var myDp = await openDatabase(path, version:1, onCreate: creation);
    return myDp;
  } // intDB

  creation(Database dp, int newVersion) async {
    var sql =
        "CREATE TABLE $productTable ($columnId INTEGER PRIMARY KEY NOT NULL,"
        "$columnCompanyName TEXT,"
        "$columnProductName TEXT,$columnProductImage TEXT,"
        "$columnCarType TEXT,$columnCompanyPhone TEXT,$columnProductCoast DOUBLE,$columnNumberOfItems INTEGER NOT NULL)";
    await dp.execute(sql);
  } // creation

  Future<int> saveProduct(ProductModel product) async {
    var dbClient = await dp;
    var result = await dbClient.insert(productTable, product.toMap());
    return result;
  }

  Future<List> getAllProducts() async {
    var dbClient = await dp;

    var result = await dbClient.query(productTable, columns: [
      columnId,
      columnCompanyName,
      columnProductName,
      columnProductImage,
      columnCarType,
      columnCompanyPhone,
      columnProductCoast,
      columnNumberOfItems
    ]); //result

    return result.toList();
  }

  Future<int> getCount() async {
    var dbClient = await dp;
    var sql = 'SELECT COUNT(*)FROM $productTable';
    return Sqflite.firstIntValue(await dbClient.rawQuery(sql));
  }


  Future<int> deleteProduct(int id) async {
    var dpClient = await dp;
    return await dpClient
        .delete(productTable, where: '$columnId = ?', whereArgs: [id]);
  }

  Future close() async {
    var dpClient = await dp;
    return await dpClient.close();
  }
}
// Future<Employee> getEmployee(int id) async {
//   var dbClient = await db;
//   List<Map> result = await dbClient.query(tableEmployee,
//       columns: [
//         columnId,
//         columnName,
//         columnAge,
//         columnCity,
//         columnDepartment,
//         columnDescription,
//       ],
//       where: '$columnId = ?',
//       whereArgs: ['id']); //result
//   if (result.length < 0) {
//     return new Employee.fromMap(result.first);
//   }
//   return null;
// }
//
// Future<int> updateEmployee(Employee employee) async {
//   var dpClient = await db;
//   return await dpClient.update(tableEmployee, employee.toMap(),
//       where: '$columnId = ?', whereArgs: [employee.id]);
// }
