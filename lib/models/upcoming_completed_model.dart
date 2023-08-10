class UpcomingCompleted {
  const UpcomingCompleted({
    required this.image1,
    required this.image2,
    required this.text1,
    required this.text2,
    required this.goals,
    this.date,
    this.time,
    this.alarm,
  });
  final String image1;
  final String image2;
  final String text1;
  final String text2;
  final String goals;
  final String? date;
  final String? time;
  final String? alarm;
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

List<UpcomingCompleted> upcomingCompletedList = [
  league1,
  league2,
  league3,
  league4,
  league5,
  league6,
];
