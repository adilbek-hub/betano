class LeagueWomen {
  const LeagueWomen({
    required this.icon,
    required this.text,
    required this.wNum,
    required this.dNum,
    required this.lNum,
    required this.pNum,
  });
  final String icon;
  final String text;
  final int wNum;
  final int dNum;
  final int lNum;
  final int pNum;
}

const elit = LeagueWomen(
  icon: 'plYellow',
  text: 'elit, adipiscing Team',
  dNum: 2,
  lNum: 3,
  pNum: 4,
  wNum: 5,
);
const facilisis = LeagueWomen(
  text: 'facilisis eros Team',
  icon: 'plYellow',
  dNum: 2,
  lNum: 3,
  pNum: 4,
  wNum: 5,
);
const veniam = LeagueWomen(
  text: 'veniam, aliquam Team',
  icon: 'plYellow',
  dNum: 2,
  lNum: 3,
  pNum: 4,
  wNum: 5,
);
const dignissim = LeagueWomen(
  text: 'dignissim Team',
  icon: 'plYellow',
  dNum: 2,
  lNum: 3,
  pNum: 4,
  wNum: 5,
);
const tincidunt = LeagueWomen(
  text: 'tincidunt Team vel',
  icon: 'plYellow',
  dNum: 2,
  lNum: 3,
  pNum: 4,
  wNum: 5,
);
const eu = LeagueWomen(
  text: 'eu nostrud Team',
  icon: 'plYellow',
  dNum: 2,
  lNum: 3,
  pNum: 4,
  wNum: 5,
);
List<LeagueWomen> leagueWomenList = [
  elit,
  facilisis,
  veniam,
  dignissim,
  tincidunt,
  eu,
];
