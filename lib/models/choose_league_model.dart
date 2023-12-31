class ChooseLeague {
  const ChooseLeague({
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
}

const quiEtLeague = ChooseLeague(image: 'plYellow', text: 'Qui Et League');
const atSedLeague = ChooseLeague(image: 'plBlack', text: 'At Sed League');
const velNullaLeague =
    ChooseLeague(image: 'plYellow', text: 'Vel Nulla League');
const volutpatNibhLeague =
    ChooseLeague(image: 'plBlack', text: 'Volutpat. Nibh League');
const molestieQuisLeague =
    ChooseLeague(image: 'plYellow', text: 'Molestie Quis League');
const commodoHendreritLeague =
    ChooseLeague(image: 'plBlack', text: 'Commodo Hendrerit League');
const sitInLeague = ChooseLeague(image: 'plYellow', text: 'Sit In League');
const dignissimMolestieLeague =
    ChooseLeague(image: 'plBlack', text: 'Dignissim Molestie League');

List<ChooseLeague> shooseLeagueList = [
  quiEtLeague,
  atSedLeague,
  velNullaLeague,
  volutpatNibhLeague,
  molestieQuisLeague,
  commodoHendreritLeague,
  sitInLeague,
  dignissimMolestieLeague,
];

class FourViewSport {
  const FourViewSport({
    required this.valeyball,
    required this.handball,
    required this.valeyballWomen,
    required this.handballWomen,
  });
  final String valeyball;
  final String handball;
  final String valeyballWomen;
  final String handballWomen;
}

const view1 = FourViewSport(
  valeyball: 'Valeyball',
  handball: 'Handball',
  valeyballWomen: 'Valeyball Women',
  handballWomen: 'Handball Women',
);
