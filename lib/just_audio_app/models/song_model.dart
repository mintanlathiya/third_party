class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'Glass',
      description: 'Glass',
      url: 'assets/images/1.jpeg',
      coverUrl: 'assets/audios/1.mp3',
    ),
    Song(
      title: 'Illusions',
      description: 'Illusions',
      url: 'assets/audios/2.mp3',
      coverUrl: 'assets/images/2.jpeg',
    ),
    Song(
      title: 'Pray',
      description: 'Pray',
      url: 'assets/audios/1.mp3',
      coverUrl: 'assets/images/3.jpeg',
    )
  ];
}
