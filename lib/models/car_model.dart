class CarModel {
  int id;
  String companyName, carType, productName, productImage, companyPhone;
  double productCoast;
  CarModel(
      {this.id,
      this.carType,
      this.companyName,
      this.productCoast,
      this.productName,
      this.productImage,
      this.companyPhone});
}

class CarBrand {
  String brandLogo;

  CarBrand(this.brandLogo);
}

List<String> carBrands = [
  ("assets/images/1.jpeg"),
  ("assets/images/2.jpeg"),
  ("assets/images/3.jpeg"),
  ("assets/images/4.jpeg"),
  ("assets/images/5.jpeg"),
  ("assets/images/6.jpeg"),
  ("assets/images/7.jpeg"),
  ("assets/images/8.jpeg"),
  ("assets/images/9.jpeg"),
  ("assets/images/10.jpeg"),
  ("assets/images/11.jpeg"),
  ("assets/images/12.jpeg"),
  ("assets/images/13.jpeg"),
  ("assets/images/14.jpeg"),
  ("assets/images/15.jpeg"),
  ("assets/images/16.jpeg"),
  ("assets/images/18.jpeg"),
  ("assets/images/11.jpeg"),
  ("assets/images/12.jpeg"),
  ("assets/images/13.jpeg"),
  ("assets/images/14.jpeg"),
  ("assets/images/15.jpeg"),
  ("assets/images/16.jpeg"),
  ("assets/images/6.jpeg"),
  ("assets/images/7.jpeg"),
  ("assets/images/8.jpeg"),
  ("assets/images/9.jpeg"),
  ("assets/images/10.jpeg"),
  ("assets/images/5.jpeg"),
  ("assets/images/6.jpeg"),
  ("assets/images/7.jpeg"),
  ("assets/images/8.jpeg"),
  ("assets/images/9.jpeg"),
  ("assets/images/10.jpeg"),
  ("assets/images/11.jpeg"),
  ("assets/images/11.jpeg"),
];

List<CarModel> carParts = [
  CarModel(
      id: 1,
      carType: "p1",
      companyName: "المحمديه ١",
      productCoast: 20,
      productName: "طمبوره ١",
      productImage: "assets/images/p1.png",
      companyPhone: "01021574678"),
  CarModel(
      id: 2,
      carType: "p2",
      companyName: "المحمديه 2",
      productCoast: 20,
      productName: "فنطوره ١2",
      productImage: "assets/images/p2.png",
      companyPhone: "011299746788"),
  CarModel(
      id: 3,
      carType: "p3",
      companyName: "المحمديه ١23",
      productCoast: 10,
      productName: "طمبوره ١",
      productImage: "assets/images/p3.png",
      companyPhone: "017905788798"),
  CarModel(
      id: 4,
      carType: "p4",
      companyName: "المحمديه ٢٣١",
      productCoast: 10,
      productName: "انطوره ١2",
      productImage: "assets/images/p4.png",
      companyPhone: "01828787746768"),
  CarModel(
      id: 5,
      carType: "p5",
      companyName: "قانو ١",
      productCoast: 10,
      productName: "بنطوره ١",
      productImage: "assets/images/p5.png",
      companyPhone: "077765746758"),
  CarModel(
      id: 6,
      carType: "p1",
      companyName: "لنون ١",
      productCoast: 10,
      productName: "هنطوره ١",
      productImage: "assets/images/p6.png",
      companyPhone: "0190905746748"),
  CarModel(
      id: 7,
      carType: "p2",
      companyName: "skmk ١",
      productCoast: 10,
      productName: "ماهوله ١",
      productImage: "assets/images/p7.png",
      companyPhone: "019889746783"),
  CarModel(
      id: 8,
      carType: "p3",
      companyName: "dgd ١",
      productCoast: 20,
      productName: ";نتونه ١",
      productImage: "assets/images/p8.png",
      companyPhone: "08989746783"),
];
/////////////////////////////////////////////////////////////////////////

List<CarModel> carAcessors = [

  CarModel(
      id: 1,
      carType: "p1",
      companyName: "hjhash ١",
      productCoast: 20,
      productName: "ash ١",
      productImage: "assets/images/a1.png",
      companyPhone: "08989746782"),
  CarModel(
      id: 2,
      carType: "p2",
      companyName: "dhsd ١",
      productCoast: 20,
      productName: "hsdh ١",
      productImage: "assets/images/a2.png",
      companyPhone: "08989746781"),
  CarModel(
      id: 3,
      carType: "p3",
      companyName: "المحمddsديه ١",
      productCoast: 20,
      productName: "hdshj ١",
      productImage: "assets/images/a3.png",
      companyPhone: "08989746784"),
  CarModel(
      id: 4,
      carType: "p1",
      companyName: "dhdsh ١",
      productCoast: 20,
      productName: "dshj ١",
      productImage: "assets/images/a4.png",
      companyPhone: "08989746748"),
  CarModel(
      id: 5,
      carType: "p2",
      companyName: "hsdjh 2",
      productCoast: 10,
      productName: "dsjh ١2",
      productImage: "assets/images/a5.png",
      companyPhone: "08989746758"),
  CarModel(
      id: 6,
      carType: "p3",
      companyName: "dshh ١23",
      productCoast: 10,
      productName: "طمبhhsdjhوره ١",
      productImage: "assets/images/a6.png",
      companyPhone: "08989746768"),
  CarModel(
      id: 7,
      carType: "p4",
      companyName: "jdfj ٢٣١",
      productCoast: 10,
      productName: "nmm ١2",
      productImage: "assets/images/a7.png",
      companyPhone: "0898974644"),
  CarModel(
      id: 8,
      carType: "p5",
      companyName: "sdhhh ١",
      productCoast: 10,
      productName: "hsdh ١",
      productImage: "assets/images/a8.png",
      companyPhone: "43"),
];

///////////////////////////////////////////////

List<CarModel> others = [
  CarModel(
      id: 1,
      carType: "p1",
      companyName: "p[[p ١",
      productCoast:20,
      productName: "l;l ١",
      productImage: "assets/images/o1.png",
      companyPhone: "0898974646"),
  CarModel(
      id: 2,
      carType: "p2",
      companyName: "klkk ١",
      productCoast: 10,
      productName: ";llk ١",
      productImage: "assets/images/o2.png",
      companyPhone: "0898974667"),
  CarModel(
      id: 3,
      carType: "p3",
      companyName: "lklk ١",
      productCoast:50,
      productName: "lkk ١",
      productImage: "assets/images/o3.png",
      companyPhone: "0898974690"),
  CarModel(
      id: 4,
      carType: "p1",
      companyName: "kjk ١",
      productCoast: 40,
      productName: "lkk ١",
      productImage: "assets/images/o4.png",
      companyPhone: "0898974699"),
  CarModel(
      id: 5,
      carType: "p2",
      companyName: "er 2",
      productCoast: 30,
      productName: "jdfj ١2",
      productImage: "assets/images/o5.png",
      companyPhone: "0898974666"),
  CarModel(
      id: 6,
      carType: "p3",
      companyName: "as ١23",
      productCoast:20,
      productName: "nsdmnm ١",
      productImage: "assets/images/o6.png",
      companyPhone: "0898974655"),
  CarModel(
      id: 7,
      carType: "p4",
      companyName: "dsds ٢٣١",
      productCoast: 20,
      productName: "nmm ١2",
      productImage: "assets/images/o7.png",
      companyPhone: "0898974633"),
  CarModel(
      id: 8,
      carType: "p5",
      companyName: "dsds ١",
      productCoast:10,
      productName: "dsdds ١",
      productImage: "assets/images/o8.png",
      companyPhone: "0898974622"),
];
