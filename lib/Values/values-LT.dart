// Titles
String newTravelTitle = "Naujos kelionės registracija"; 

String stopValueText = 'Tarpinis miestas';      // text of new stop field
String departureValueText = 'Išvykimo vieta';   // text of departure field
String arrivalValue = 'Atvykimo vieta';         // text of arrival field
String dateText = "Data";       
String timeText = "Laikas";
String addStopText = "Pridėti miestą";
String lackOfDataText = "Trūksta duomenų";
String selectDepartureText = "Įveskite išvykimo vietą";
String selectArrivalText = "Įveskite atvykmo vietą";
String selectDepartureArrivalText = "Įveskite išvykimo ir atvykimo vietas";
String okText = "Gerai";
String cancelText = "Atšaukti";
String confirmText = "Patvirtinti";
String travelSavedText = "Kelionė sėkmingai išsaugota";
String confirmTravelText = "Patvirtinti išvykimą";
String saveButtonText = "Wrum Wrum";
String departureTimeText = "Išvykimo laikas";
String departureDateText = "Išvykimo data";

// list of weekdays
Map<String, bool> listOfWeekDays = {
  "Pirmadienis": false,
  "Antradienis": false,
  "Trečiadienis": false,
  "Ketvirtadienis": false,
  "Penktadienis": false,
  "Šeštadienis": false,
  "Sekmadienis": false,
};

// list of cities in Lithuania
List<String> cities = [
  'Akmenė',
  'Alytus',
  'Anykščiai',
  'Ariogala',
  'Baltoji Vokė',
  'Birštonas',
  'Biržai',
  'Daugai',
  'Druskininkai',
  'Dūkštas',
  'Dusetos',
  'Eišiškės',
  'Elektrėnai',
  'Ežerėlis',
  'Gargždai',
  'Garliava',
  'Gelgaudiškis',
  'Grigiškės',
  'Ignalina',
  'Jieznas',
  'Jonava',
  'Joniškėlis',
  'Joniškis',
  'Jurbarkas',
  'Kaišiadorys',
  'Kalvarija',
  'Kaunas',
  'Kavarskas',
  'Kazlų Rūda',
  'Kėdainiai',
  'Kelmė',
  'Kybartai',
  'Klaipėda',
  'Kretinga',
  'Kudirkos Naumiestis',
  'Kupiškis',
  'Kuršėnai',
  'Lazdijai',
  'Lentvaris',
  'Linkuva',
  'Marijampolė',
  'Mažeikiai',
  'Molėtai',
  'Naujoji Akmenė',
  'Nemenčinė',
  'Neringa',
  'Obeliai',
  'Pabradė',
  'Pagėgiai',
  'Pakruojis',
  'Palanga',
  'Pandėlys',
  'Panemunė',
  'Panevėžys',
  'Pasvalys',
  'Plungė',
  'Priekulė',
  'Prienai',
  'Radviliškis',
  'Ramygala',
  'Raseiniai',
  'Rietavas',
  'Rokiškis',
  'Rūdiškės',
  'Salantai',
  'Seda',
  'Simnas',
  'Skaudvilė',
  'Skuodas',
  'Smalininkai',
  'Subačius',
  'Šakiai',
  'Šalčininkai',
  'Šeduva',
  'Šiauliai',
  'Šilalė',
  'Šilutė',
  'Širvintos',
  'Švenčionėliai',
  'Švenčionys',
  'Tauragė',
  'Telšiai',
  'Tytuvėnai',
  'Trakai',
  'Troškūnai',
  'Ukmergė',
  'Utena',
  'Užventis',
  'Vabalninkas',
  'Varėna',
  'Varniai',
  'Veisiejai',
  'Venta',
  'Viekšniai',
  'Vievis',
  'Vilkaviškis',
  'Vilkija',
  'Vilnius',
  'Virbalis',
  'Visaginas',
  'Zarasai',
  'Žagarė',
  'Žiežmariai'
];



/*class Cities{
  int id;
  String city;

  Cities(id, city);

  static List<Cities> getCities(){
    return <Cities>[
      Cities(1, 'Akmenė'),
      Cities(2, 'Alytus'),
      Cities(3, 'Anykščiai'),
      Cities(4, 'Ariogala'),
      Cities(5, 'Baltoji Vokė'),
      Cities(6, 'Birštonas'),
      Cities(7, 'Biržai'),
      Cities(8, 'Daugai'),
      Cities(9, 'Druskininkai'),
      Cities(10, 'Dūkštas'),
      Cities(11, 'Dusetos'),
      Cities(12, 'Eišiškės'),
      Cities(13, 'Elektrėnai'),
      Cities(14, 'Ežerėlis'),
      Cities(15, 'Gargždai'),
      Cities(16, 'Garliava'),
      Cities(17, 'Gelgaudiškis'),
      Cities(18, 'Grigiškės'),
      Cities(19, 'Ignalina'),
      Cities(20, 'Jieznas'),
      Cities(21, 'Jonava'),
      Cities(22, 'Joniškėlis'),
      Cities(23, 'Joniškis'),
      Cities(24, 'Jurbarkas'),
      Cities(25, 'Kaišiadorys'),
      Cities(26, 'Kalvarija'),
      Cities(27, 'Kaunas'),
      Cities(28, 'Kavarskas'),
      Cities(29, 'Kazlų Rūda'),
      Cities(30, 'Kėdainiai'),
      Cities(31, 'Kelmė'),
      Cities(32, 'Kybartai'),
      Cities(33, 'Klaipėda'),
      Cities(34, 'Kretinga'),
      Cities(35, 'Kudirkos Naumiestis'),
      Cities(36, 'Kupiškis'),
      Cities(37, 'Kuršėnai'),
      Cities(38, 'Lazdijai'),
      Cities(39, 'Lentvaris'),
      Cities(40, 'Linkuva'),
      Cities(41, 'Marijampolė'),
      Cities(42, 'Mažeikiai'),
      Cities(43, 'Molėtai'),
      Cities(44, 'Naujoji Akmenė'),
      Cities(45, 'Nemenčinė'),
      Cities(46, 'Neringa'),
      Cities(47, 'Obeliai'),
      Cities(48, 'Pabradė'),
      Cities(49, 'Pagėgiai'),
      Cities(50, 'Pakruojis'),
      Cities(51, 'Palanga'),
      Cities(52, 'Pandėlys'),
      Cities(53, 'Panemunė'),
      Cities(54, 'Panevėžys'),
      Cities(55, 'Pasvalys'),
      Cities(56, 'Plungė'),
      Cities(57, 'Priekulė'),
      Cities(58, 'Prienai'),
      Cities(59, 'Radviliškis'),
      Cities(60, 'Ramygala'),
      Cities(61, 'Raseiniai'),
      Cities(62, 'Rietavas'),
      Cities(63, 'Rokiškis'),
      Cities(64, 'Rūdiškės'),
      Cities(65, 'Salantai'),
      Cities(66, 'Seda'),
      Cities(67, 'Simnas'),
      Cities(68, 'Skaudvilė'),
      Cities(69, 'Skuodas'),
      Cities(70, 'Smalininkai'),
      Cities(71, 'Subačius'),
      Cities(72, 'Šakiai'),
      Cities(73, 'Šalčininkai'),
      Cities(74, 'Šeduva'),
      Cities(75, 'Šiauliai'),
      Cities(76, 'Šilalė'),
      Cities(77, 'Šilutė'),
      Cities(78, 'Širvintos'),
      Cities(79, 'Švenčionėliai'),
      Cities(80, 'Švenčionys'),
      Cities(81, 'Tauragė'),
      Cities(82, 'Telšiai'),
      Cities(83, 'Tytuvėnai'),
      Cities(84, 'Trakai'),
      Cities(85, 'Troškūnai'),
      Cities(86, 'Ukmergė'),
      Cities(87, 'Utena'),
      Cities(88, 'Užventis'),
      Cities(89, 'Vabalninkas'),
      Cities(90, 'Varėna'),
      Cities(91, 'Varniai'),
      Cities(92, 'Veisiejai'),
      Cities(93, 'Venta'),
      Cities(94, 'Viekšniai'),
      Cities(95, 'Vievis'),
      Cities(96, 'Vilkaviškis'),
      Cities(97, 'Vilkija'),
      Cities(98, 'Vilnius'),
      Cities(99, 'Virbalis'),
      Cities(100, 'Visaginas'),
      Cities(101, 'Zarasai'),
      Cities(102, 'Žagarė'),
      Cities(103, 'Žiežmariai'),
    ];
  }
}*/