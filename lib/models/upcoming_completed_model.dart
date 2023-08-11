class UpcomingCompleted {
  const UpcomingCompleted({
    this.image1,
    this.image2,
    this.text1,
    this.text2,
    this.goals,
    this.date,
    this.time,
    this.alarm,
    this.text3,
    this.text4,
  });
  final String? image1;
  final String? image2;
  final String? text1;
  final String? text2;
  final String? goals;
  final String? date;
  final String? time;
  final String? alarm;
  final String? text3;
  final String? text4;
}

const league1 = UpcomingCompleted(
  image1: 'PlYellow2',
  image2: 'PLBlack2',
  text1: 'League 2 Women 1',
  text2: 'League 2 Women 2',
  goals: '5:4',
  date: '07.02',
  time: '15:30',
  alarm: 'alarm',
);
const league2 = UpcomingCompleted(
  image1: 'PlYellow2',
  image2: 'PLBlack2',
  text1: 'League 2 Women 2',
  text2: 'League 2 Women 3',
  goals: '3:4',
  date: '10.02',
  time: '12:30',
  alarm: 'alarm',
);
const league3 = UpcomingCompleted(
  image1: 'PlYellow2',
  image2: 'PLBlack2',
  text1: 'Toro Dre Maja. Women',
  text2: 'Toro Al Paca. Women',
  goals: '6:2',
  date: '07.02',
  time: '15:30',
  alarm: 'alarm',
);
const league4 = UpcomingCompleted(
  image1: 'PlYellow2',
  image2: 'PLBlack2',
  text1: 'League 2 Women 4',
  text2: 'League 2 Women 5',
  goals: '6:2',
  date: '09.02',
  time: '16:00',
  alarm: 'alarm',
);

const league5 = UpcomingCompleted(
  image1: 'PlYellow2',
  image2: 'PLBlack2',
  text1: 'Toro Dre Maja. Women 6',
  text2: 'Toro Al Paca. Women 7',
  goals: '6:2',
  date: '11.02',
  time: '10:30',
  alarm: 'alarm',
);
const league6 = UpcomingCompleted(
  image1: 'PlYellow2',
  image2: 'PLBlack2',
  text1: 'League 2 Women 8',
  text2: 'League 2 Women 9',
  goals: '6:2',
  date: '05.02',
  time: '11:30',
  alarm: 'alarm',
);

const stadium = UpcomingCompleted(
  text3: 'Stadium',
  text4: 'Al Banat Haimi Pos da Reteo',
);
const city = UpcomingCompleted(
  text3: 'City',
  text4: 'Malanda',
);
const capacity = UpcomingCompleted(
  text3: 'Capacity',
  text4: '120 000',
);
const country = UpcomingCompleted(
  text3: 'Country',
  text4: 'Korooco',
);
const homePosition = UpcomingCompleted(
  text3: 'Home position',
  text4: '4',
);
const awayPosition = UpcomingCompleted(
  text3: 'Away position',
  text4: '4',
);
const bestsOfSets = UpcomingCompleted(
  text3: 'Bests of sets',
  text4: '5',
);

List<UpcomingCompleted> upcomingCompletedList = [
  league1,
  league2,
  league3,
  league4,
  league5,
  league6,
];
List<UpcomingCompleted> detailWomenValeyballPlaceList = [
  stadium,
  city,
  capacity,
  country,
  homePosition,
  awayPosition,
  bestsOfSets,
];
