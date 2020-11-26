import 'package:flutter/material.dart';

class Doodle {
  final String website;
  final String name;
  final String time;
  final String content;
  final String doodle;
  final String place;
  final String title;
  final Color iconBackground;
  final Icon icon;
  const Doodle(
      {this.name,
      this.time,
      this.content,
      this.title,
      this.place,
      this.doodle,
      this.icon,
      this.iconBackground,
      this.website});
}

const List<Doodle> doodles = [
  Doodle(
      name: "SIDERO TECHNOLOGIES",
      title: "Software Developer",
      time: "Oct 2020 - Present",
      website: "https://www.sidero.ie/",
      place: "Athlone Ireland",
      content:
          "*-* Working on Ericsson Network Manager's Domain Proxy service in Citizens Broadband Radio Service ",
      doodle:
          "https://www.google.com/logos/doodles/2016/abd-al-rahman-al-sufis-azophi-1113th-birthday-5115602948587520-hp2x.jpg",
      icon: Icon(Icons.developer_mode, color: Colors.white),
      iconBackground: Colors.cyan),
  Doodle(
      name: "GOFRUGAL TECHNOLOGIES",
      title: "Member Technical Staff",
      time: "Jun 2017- Jun 2019",
      website: "https://www.gofrugal.com/",
      place: "Chennai, India",
      content:
          "*-* Served as main source of support to analyse the Inventory management, provided solutions and optimal courses of action.\n*-* Created innovative solutions to meet changing market demands and future growth plans in the field of Stock maintainance through Mobile Applications.\n*-* Researched, designed and implemented scalable applications for information identification, extraction, analysis, retrieval and indexing.\n*-* Embedded hardware, firmware and interfaces used in 15+ verticals of Business [Retail,Restaurant and Distribution] industry.\n*-* Worked with business clients including FutureGroup, HYVA etc., to understand business needs and addressed production questions on the Stock taking industry.\n*-* Supervised deployments and provided troubleshooting and user support.\n*-* Evaluated consistency and importance of different business intelligence data against the needs.",
      doodle:
          "https://www.google.com/logos/doodles/2016/abd-al-rahman-al-sufis-azophi-1113th-birthday-5115602948587520-hp2x.jpg",
      icon: Icon(Icons.developer_mode, color: Colors.white),
      iconBackground: Colors.cyan),
  Doodle(
      name: "SAYONA AUTOMATION",
      title: "Intern - Program Manager",
      time: "Jun 2016 - Sep 2016",
      place: "Chennai, India",
      content:
          "*-* Acted as developer and tester for Near Field Communication(NFC) based connectivity apps for handheld devices.\n*-* Utilized such technologies as Kotlin, SQLite and NFC Libraries to develop new applications.\n*-* Designed and developed application testscripts.\n*-* Consulted with NFC device engineering staffs to evaluate hardware and software requirements for the application.",
      doodle:
          "https://www.google.com/logos/doodles/2015/abu-al-wafa-al-buzjanis-1075th-birthday-5436382608621568-hp2x.jpg",
      icon: Icon(
        Icons.phonelink,
        color: Colors.white,
      ),
      iconBackground: Colors.redAccent),
  Doodle(
      name: "300dpi - SASTRA UNIVERSITY",
      title: "Lead - Application Development Team",
      time: "Aug 2016 - Mar 2017",
      place: "Thanjavur, India",
      content:
          "*_* Worked closely with cultural management staff of SASTRA UNIVERSITY to improve digital interactions of the users throughout the Cultural Fest.\n*_* Created Native mobile application for Kuruksastra'17 (State Level - Cultural Fest) using latest technologies.\n*_* Worked effectively with cross-functional design teams to create solutions that elevated participants experience and significantly improved overall functionality and performance.",
      doodle:
          "https://www.google.com/logos/doodles/2015/abu-al-wafa-al-buzjanis-1075th-birthday-5436382608621568-hp2x.jpg",
      icon: Icon(
        Icons.phone_android,
        color: Colors.white,
      ),
      iconBackground: Colors.green),
];


const List<Doodle> doodlesEducation = [
   Doodle(
      name: "Athlone Institute of Technology",
      title: "M.Sc. Data Analytics",
      time: "Sep 2019 - Sep 2020",
      place: "Athlone, Ireland",
      content:
          " Abu al-Wafa' is an innovator whose contributions to science include one of the first known introductions to negative numbers, and the development of the first quadrant, a tool used by astronomers to examine the sky. His pioneering work in spherical trigonometry was hugely influential for both mathematics and astronomy.",
      doodle:
          "https://www.google.com/logos/doodles/2015/abu-al-wafa-al-buzjanis-1075th-birthday-5436382608621568-hp2x.jpg",
      icon: Icon(
        Icons.location_city,
        color: Colors.white,
      ),
      iconBackground: Colors.redAccent),
  Doodle(
      name: "SASTRA UNIVERSITY",
      title: "B.Tech Information and Communication Technology",
      time: "Jun 2013- May 2017",
      place: "Thanjavur, India",
      content:
          "One of Al-Sufi's greatest works involved fact-checking the Greek astronomer Ptolemy's measurements of the brightness and size of stars. In the year 964 AD, Al-Sufi published his findings in a book titled Kitab al-Kawatib al-Thabita al-Musawwar, or The Book of Fixed Stars. In many cases, he confirmed Ptolemy’s discoveries, but he also improved upon his work by illustrating the constellations and correcting some of Ptolemy’s observations about the brightness of stars.",
      doodle:
          "https://www.google.com/logos/doodles/2016/abd-al-rahman-al-sufis-azophi-1113th-birthday-5115602948587520-hp2x.jpg",
      icon: Icon(Icons.show_chart, color: Colors.white),
      iconBackground: Colors.cyan),
];