class Weather {
  final DateTime date;
  final String name;
  final double temp;
  final String main;
  final String icon;

  Weather({this.date, this.name, this.temp, this.main, this.icon});

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        date: DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000),
        name: json['name'],
        temp: json['main']['temp'].toDouble(),
        main: json['weather'][0]['main'],
        icon: json['weather'][0]['icon'],
      );
}