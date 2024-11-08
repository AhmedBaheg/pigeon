import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryRaceModel {
  String headerCategoryTitle, raceTitle, statusText, from, to;
  Color dividerColor, statusColor, textStatusColor, dateTimeColor;
  int numOfParticipants;
  bool? isPending, isActive, isEnded;

  CategoryRaceModel({
    required this.headerCategoryTitle,
    required this.raceTitle,
    required this.statusText,
    required this.from,
    required this.to,
    required this.dividerColor,
    required this.statusColor,
    required this.textStatusColor,
    required this.dateTimeColor,
    required this.numOfParticipants,
    this.isPending,
    this.isActive,
    this.isEnded,
  });
}

List<CategoryRaceModel> categoryRaceList = [
  CategoryRaceModel(
    headerCategoryTitle: 'Upcoming Race',
    dividerColor: const Color(0xffFDEEE3),
    statusColor: const Color(0xffFDEEE3),
    raceTitle: 'International Egypt Race for pigeons',
    statusText: 'Pending',
    textStatusColor: Colors.black,
    from: 'Aswan, Egypt',
    to: 'Giza, Egypt',
    numOfParticipants: 28,
    dateTimeColor: const Color(0xff55CC4B),
    isPending: true,
  ),
  CategoryRaceModel(
    headerCategoryTitle: 'Active',
    dividerColor: const Color(0xff55CC4B),
    statusColor: const Color(0xffD80000),
    raceTitle: 'Middle East Race (MER)',
    statusText: 'Live',
    textStatusColor: Colors.white,
    from: 'Jeddah, Saudi',
    to: 'Giza, Egypt',
    numOfParticipants: 28,
    dateTimeColor: const Color(0xff7E7E7E),
    isActive: true,
  ),
  CategoryRaceModel(
    headerCategoryTitle: 'Finished races',
    dividerColor: const Color(0xffBFBEC0),
    statusColor: const Color(0xffBFBEC0),
    raceTitle: 'Middle East Race 2023 (MER)',
    statusText: 'Ended',
    textStatusColor: Colors.black,
    from: 'Jeddah, Saudi',
    to: 'Giza, Egypt',
    numOfParticipants: 28,
    dateTimeColor: const Color(0xff7E7E7E),
    isEnded: true,
  ),
];

const String description =
    'Pigeons participating in the Bourges I 2024 race will be basketted on 23/05/2024. Liberation is planned for 25/05/2024.';
