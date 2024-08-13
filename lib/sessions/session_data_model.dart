class SessionData {
  final SpeakerData speaker;
  final String title;
  final String? description;
  final String time;
  final bool isEnglish;

  const SessionData({
    required this.speaker,
    required this.title,
    this.description,
    required this.time,
    this.isEnglish = false,
  });

  factory SessionData.fromJson(Map<String, dynamic> json) {
    return SessionData(
      speaker: SpeakerData.fromJson(json['speaker']),
      title: json['title'],
      description: json['description'],
      time: json['time'],
      isEnglish: json['isEnglish'],
    );
  }
}

class SpeakerData {
  final String name;
  final String bio;
  final String? imageUrl;

  const SpeakerData({
    required this.name,
    required this.bio,
    this.imageUrl,
  });

  factory SpeakerData.fromJson(Map<String, dynamic> json) {
    return SpeakerData(
      name: json['name'],
      bio: json['bio'],
      imageUrl: json['imageUrl'],
    );
  }
}