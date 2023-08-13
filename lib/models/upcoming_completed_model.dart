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
    this.goalsNum1,
    this.goalsNum2,
    this.goalsNum3,
    this.goalsNum4,
    this.goalsNum5,
    this.goalsNum6,
    this.goalsNum7,
    this.goalsNum8,
    this.goalsNum9,
    this.goalsNum10,
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
  final String? goalsNum1;
  final String? goalsNum2;
  final String? goalsNum3;
  final String? goalsNum4;
  final String? goalsNum5;
  final String? goalsNum6;
  final String? goalsNum7;
  final String? goalsNum8;
  final String? goalsNum9;
  final String? goalsNum10;
}

class DuelsNumbers {
  DuelsNumbers({
    this.league2Women1,
    this.league2Women2,
    this.league2Women3,
    this.togoDreMajaWomen,
    this.togoAiPPacaWomen,
    this.league2Women4,
    this.league2Women5,
    this.league2Women6,
    this.league2Women7,
    this.league2Women8,
  });
  final String? league2Women1;
  final String? league2Women2;
  final String? league2Women3;
  final String? togoDreMajaWomen;
  final String? togoAiPPacaWomen;
  final String? league2Women4;
  final String? league2Women5;
  final String? league2Women6;
  final String? league2Women7;
  final String? league2Women8;
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
  goalsNum1: '12:21',
  goalsNum2: '12:12',
  goalsNum3: '21:16',
  goalsNum4: '16:11',
  goalsNum5: '20:26',
  goalsNum6: '12:21',
  goalsNum7: '12:12',
  goalsNum8: '21:16',
  goalsNum9: '16:11',
  goalsNum10: '20:26',
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
  goalsNum1: '22:22',
  goalsNum2: '21:21',
  goalsNum3: '22:22',
  goalsNum4: '23:23',
  goalsNum5: '24:24',
  goalsNum6: '22:22',
  goalsNum7: '21:21',
  goalsNum8: '22:22',
  goalsNum9: '23:23',
  goalsNum10: '24:24',
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
  goalsNum1: '12:21',
  goalsNum2: '10:10',
  goalsNum3: '11:11',
  goalsNum4: '12:12',
  goalsNum5: '13:13',
  goalsNum6: '12:21',
  goalsNum7: '10:10',
  goalsNum8: '11:11',
  goalsNum9: '12:12',
  goalsNum10: '13:13',
);
const league4 = UpcomingCompleted(
  image1: 'PlYellow2',
  image2: 'PLBlack2',
  text1: 'League 2 Women 4',
  text2: 'League 2 Women 5',
  goals: '6:5',
  date: '09.02',
  time: '16:00',
  alarm: 'alarm',
  goalsNum1: '14:10',
  goalsNum2: '14:10',
  goalsNum3: '15:11',
  goalsNum4: '16:12',
  goalsNum5: '17:16',
  goalsNum6: '14:10',
  goalsNum7: '14:10',
  goalsNum8: '15:11',
  goalsNum9: '16:12',
  goalsNum10: '17:16',
);

const league5 = UpcomingCompleted(
  image1: 'PlYellow2',
  image2: 'PLBlack2',
  text1: 'Toro Dre Maja. Women 6',
  text2: 'Toro Al Paca. Women 7',
  goals: '6:5',
  date: '11.02',
  time: '10:30',
  alarm: 'alarm',
  goalsNum1: '18:16',
  goalsNum2: '12:10',
  goalsNum3: '18:16',
  goalsNum4: '16:20',
  goalsNum5: '10:26',
  goalsNum6: '18:16',
  goalsNum7: '12:10',
  goalsNum8: '18:16',
  goalsNum9: '16:20',
  goalsNum10: '10:26',
);
const league6 = UpcomingCompleted(
  image1: 'PlYellow2',
  image2: 'PLBlack2',
  text1: 'League 2 Women 8',
  text2: 'League 2 Women 9',
  goals: '6:1',
  date: '05.02',
  time: '11:30',
  alarm: 'alarm',
  goalsNum1: '16:13',
  goalsNum2: '12:10',
  goalsNum3: '20:16',
  goalsNum4: '16:13',
  goalsNum5: '16:26',
  goalsNum6: '16:13',
  goalsNum7: '12:10',
  goalsNum8: '20:16',
  goalsNum9: '16:13',
  goalsNum10: '16:26',
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

const teamGoal1 = UpcomingCompleted(text1: 'Malaca Team', text2: '44:71');
const teamGoals2 = UpcomingCompleted(text1: 'Ipsum Team', text2: '44:71');
const teamGoals3 = UpcomingCompleted(text1: 'Molestie Commodo', text2: '22:22');
const teamGoals4 = UpcomingCompleted(text1: 'In Elit Team', text2: '44:71');
const teamGoals5 =
    UpcomingCompleted(text1: 'Veniam Dolor Club', text2: '44:71');
const teamGoals6 = UpcomingCompleted(text1: 'Team Adipiscing', text2: '44:71');
const teamGoals7 = UpcomingCompleted(text1: 'Team Amet', text2: '22:22');
const teamGoals8 = UpcomingCompleted(text1: 'Volutpat Team', text2: '44:71');
const teamGoals9 = UpcomingCompleted(text1: 'Wisi Team', text2: '44:71');
const teamGoals10 = UpcomingCompleted(text1: 'Te Fa Team', text2: '44:71');

List<UpcomingCompleted> teamGoalList = [
  teamGoal1,
  teamGoals2,
  teamGoals3,
  teamGoals4,
  teamGoals5,
  teamGoals6,
  teamGoals7,
  teamGoals8,
  teamGoals9,
  teamGoals10,
];
