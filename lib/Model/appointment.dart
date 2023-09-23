
// To parse this JSON data, do
//
//     final appointment = appointmentFromJson(jsonString);

import 'dart:convert';

Appointment appointmentFromJson(String str) {
    final jsonData = json.decode(str);
    return Appointment.fromJson(jsonData);
}

String appointmentToJson(Appointment data) {
    final dyn = data.toJson();
    return json.encode(dyn);
}

class Appointment {
    String message;
    List<Datum> data;

    Appointment({
        required this.message,
        required this.data,
    });

    factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    String id;
    String nameOfAppointment;
    String date;
    String time;
    int v;

    Datum({
        required this.id,
        required this.nameOfAppointment,
        required this.date,
        required this.time,
        required this.v,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        nameOfAppointment: json["name_of_appointment"],
        date: json["date"],
        time: json["time"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name_of_appointment": nameOfAppointment,
        "date": date,
        "time": time,
        "__v": v,
    };
}
