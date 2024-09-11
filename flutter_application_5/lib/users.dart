
class AllUsers {
  final List<User> users= [
    User(
      name: 'Tony',
      surname: 'Stark',
      nick: 'Ironman',
      photoes: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQceZG8o4B9jRchPdWxfvDfo9AmLokYyT9EQ&s',
        'https://images.squarespace-cdn.com/content/v1/52a86cb9e4b098a46d38a18c/1625409915661-YW587RIGSRGKKHJYNBHA/iron-man-tony-stark.jpg?format=750w',
      ],
      location: 'Marvel',
    ),
    User(
      name: 'Piter',
      surname: 'Parker',
      nick: 'Spiderman',
      photoes: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwQ8_kM1TQ4eqsNriKQhDMyEs2esZV2T94eA&s',
        'https://kartinki.pics/uploads/posts/2022-03/1647980109_1-kartinkin-net-p-piter-parker-kartinki-1.jpg'
        ],
      location: 'Marvel',
    ),
    User(
      name: 'Barry',
      surname: 'Allen',
      nick: 'Flash',
      photoes: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhBNcIbSYIZ8KVd3r0ow5ZCrhd9GP5aFD6qw&s',
        'https://static.wikia.nocookie.net/marvel_dc/images/1/1a/Barry_Allen_Arrow_0008.jpg/revision/latest?cb=20201111091704'
        ],
      location: 'Dc',
    ),
    User(
      name: 'Steve',
      surname: 'Roger',
      nick: 'Captain America',
      photoes: [
        'https://w0.peakpx.com/wallpaper/775/1010/HD-wallpaper-steve-rogers-age-of-ultron-avengers-steve-rogers-thumbnail.jpg',
        'https://oyster.ignimgs.com/mediawiki/apis.ign.com/captain-america-the-winter-soldier/c/c2/ChrisEvansCapAm88989.jpg'
        ],
      location: 'Marvel',
    ),
    User(
      name: 'Ilon',
      surname: 'Mask',
      nick: 'Tesla',
      photoes: [
        'https://s0.rbk.ru/v6_top_pics/media/img/0/13/346856428420130.jpg',
        'https://icdn.lenta.ru/images/2022/10/12/12/20221012123025979/square_320_62905cc92225bb99bdfd9a00baf3c86b.jpg'
        ],
      location: 'Our World',
    ),
    User(
      name: 'Roma',
      surname: 'Filchenko',
      nick: 'Lololowka',
      photoes: [
        'https://images.boosty.to/image/e167098e-dfbc-4970-a14e-de79144536a5?change_time=1680336125',
        'https://pbs.twimg.com/profile_images/478649922648948736/SoOSoZ53_400x400.jpeg'
        ],
      location: 'Our World',
    ),
    User(
      name: 'Nikola',
      surname: 'Tesla',
      nick: 'NikolaTesla',
      photoes: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREKyii29LdllFBTQHLR9rmlD0w-zeDNlkQ6w&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDW1xhL0N5V4RNpp7Vt9_ZRcKTZpnry0fMBg&s'
        ],
      location: '???',
    ),
    User(
      name: 'your/name',
      surname: 'your/surname',
      nick: 'your/nick',
      photoes: [
        'https://t4.ftcdn.net/jpg/00/32/44/53/360_F_32445303_fOmurtPlubp0PDwggnsyqhteqLKXsahO.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlYTNl0oTKOLkZYkl3KhiExK5WN_5vq6iZyzgz9ROfSthn_c1R_Rg_wLgR37QngnPNaS4&usqp=CAU'
        ],
      location: 'Marvel',
    ),
    User(
      name: 'NoName',
      surname: 'NoSurname',
      nick: 'NoNick',
      photoes: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZaN-AzN2rVu5D-oGlVuzsJg9WTx0huMV-IhWYiZkAbWRWy3g83jj6EHLU8I1xBAbozgM&usqp=CAU',
        'https://i.redd.it/y32l78zblzb61.jpg'
        ],
      location: 'NoWorld',
    ),
    User(
      name: 'Mihail',
      surname: 'Kalashnikov',
      nick: 'CreatorKaloshnikov',
      photoes: [
        'https://upload.wikimedia.org/wikipedia/commons/8/80/Kalashnikov_Mikhail_%281%29.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Kalashnikov_Mikhail_%285%29.jpg/220px-Kalashnikov_Mikhail_%285%29.jpg'
        ],
      location: 'Our world',
    ),
    
  ];
}


class User {
  String name;
  String surname;
  String nick;
  List<String> photoes;
  String location;
  

  User({ required this.name,
  required this.surname,
  required this.nick,
  required this.photoes,
  required this.location,});
}