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
    this.num1,
    this.num2,
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
  final int? num1;
  final int? num2;
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

List<UpcomingCompleted> detailWomenValeyballPlaceList = [
  stadium,
  city,
  capacity,
  country,
  homePosition,
  awayPosition,
  bestsOfSets,
];

const set1 = UpcomingCompleted(num1: 14, text1: '1 Set', num2: 4);
const set2 = UpcomingCompleted(num1: 14, text1: '2 Set', num2: 6);
const set3 = UpcomingCompleted(num1: 17, text1: '3 Set', num2: 12);
const pointsWonOnServe =
    UpcomingCompleted(num1: 14, text1: 'Points won on serve', num2: 22);
const longestStreak =
    UpcomingCompleted(num1: 14, text1: 'Longest streak', num2: 22);

List<UpcomingCompleted> set123List = [
  set1,
  set2,
  set3,
  pointsWonOnServe,
  longestStreak,
];
const broadcast1 = UpcomingCompleted(text1: 'Match text broadcast');

const broadcast2 = UpcomingCompleted(
  text2: '12’',
  text3:
      '- et dolore sed laoreet eros wisi feugait facilisi. ut veniam, luptatum',
);

const broadcast3 = UpcomingCompleted(
  text2: '16’',
  text3: 'augue exerci te illum esse facilisis consequat, Duis in odio nonummy',
);

const broadcast4 = UpcomingCompleted(
  text2: '22’',
  text3:
      'volutpat. eum diam odio aliquam wisi Duis ullamcorper hendrerit ipsum consequat.',
);

const broadcast5 = UpcomingCompleted(
  text2: '27’',
  text3:
      'consequat, nulla commodo feugiat dignissim delenit amet, Ut magna erat zzril',
);

const broadcast6 = UpcomingCompleted(
  text2: '31’',
  text3:
      '- et dolore sed laoreet eros wisi feugait facilisi. ut veniam, luptatum',
);

List<UpcomingCompleted> broadcastList = [
  broadcast1,
  broadcast2,
  broadcast3,
  broadcast4,
  broadcast5,
  broadcast6,
];
