import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/common/background_effect.dart';
import 'package:future_flutter_web_2024/common/ff_app_bar.dart';
import 'package:future_flutter_web_2024/sessions/session_card.dart';
import 'package:future_flutter_web_2024/sessions/session_data_model.dart';

const List<SessionData> sessionsData = [
  SessionData(
    title: 'KeyNote',
    description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
    speaker: SpeakerData(
      name: 'Future<Flutter> 2024 Team',
      bio: 'Flutter Seoul / Flutter Incheon Organizer',
    ),
    time: '13:00 ~ 13:20 (KST)',
  ),
  SessionData(
    title: 'Flutter FFI',
    // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
    speaker: SpeakerData(
      name: '이진석 (Jhin Lee)',
      bio:
          'GDE Flutter / Dart\nGDG & Flutter Montreal Organizer\nFull-Stack Developer @Unity',
      imageUrl:
          'https://file.notion.so/f/f/1a99a229-307a-49bf-8774-7ca996d9e5fc/be375965-dca7-44ca-9752-9d56775e5058/image.png?table=block&id=830b5b4c-24b1-46c7-91f6-f633a1164ae8&spaceId=1a99a229-307a-49bf-8774-7ca996d9e5fc&expirationTimestamp=1723564800000&signature=XA4rAvj4jvkdi0ggbilOSAxo9OCPXlxI2iDltukHvnE&downloadName=image.png',
    ),
    time: '13:20 ~ 14:00 (KST)',
  ),
  SessionData(
    title: '어느날 갑자기 앱이 터졌을 때',
    // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
    speaker: SpeakerData(
      name: '신원규',
      bio: '설로인(주), Flutter Seoul Organizer',
      imageUrl:
          'https://file.notion.so/f/f/1a99a229-307a-49bf-8774-7ca996d9e5fc/49239de9-bc3a-4a57-a10a-556dfa36cc09/image.png?table=block&id=c8560420-24a4-4177-a21d-6b5bb5508acd&spaceId=1a99a229-307a-49bf-8774-7ca996d9e5fc&expirationTimestamp=1723564800000&signature=UZzx1jxWtxHfKB4kGAMxLbDSmHcWK36o3y-X46rpmPY&downloadName=image.png',
    ),
    time: '14:20 ~ 15:00 (KST)',
  ),
  SessionData(
      title: 'ShoreBird 작동 방식',
      // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
      speaker: SpeakerData(
        name: 'Eric Seidel',
        bio: 'ShoreBird Founder, Flutter Co-Founder',
        imageUrl:
            'https://file.notion.so/f/f/1a99a229-307a-49bf-8774-7ca996d9e5fc/86b67eaa-3ff7-4717-8f5c-65ef5c40adac/image.png?table=block&id=6bab9992-c1ec-423a-bb8b-81013dc58847&spaceId=1a99a229-307a-49bf-8774-7ca996d9e5fc&expirationTimestamp=1723564800000&signature=HlGg5wBZ-2S3fu63E_o3qeBYQu9zqsUablu77ulgbe8&downloadName=image.png',
      ),
      time: '15:20 ~ 16:00 (KST)',
      isEnglish: true),
  SessionData(
    title: 'Flutter WebRTC',
    // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
    speaker: SpeakerData(
      name: '이정주',
      bio: '(주) 펴나니, GDG & Flutter Incheon Organizer',
      imageUrl:
          'https://file.notion.so/f/f/1a99a229-307a-49bf-8774-7ca996d9e5fc/4600fb83-4b1f-4822-a1b7-b49e98647d14/image.png?table=block&id=9624d7cb-48a9-40d3-871b-62d65fe226a5&spaceId=1a99a229-307a-49bf-8774-7ca996d9e5fc&expirationTimestamp=1723564800000&signature=Y0_MOzJ1x4sqYRSdnyyqE6xwrzafxwdFho6Tc1tm5LA&downloadName=image.png',
    ),
    time: '16:20 ~ 17:00 (KST)',
  ),
  SessionData(
    title: '애니메이션, 페인트, 쉐이더로 알아보는 플러터 렌더링의 모든 것',
    // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
    speaker: SpeakerData(
      name: 'Aiden',
      bio: 'AI 스타트업 엔지니어, Flutter Seoul Organizer',
      imageUrl:
          'https://file.notion.so/f/f/1a99a229-307a-49bf-8774-7ca996d9e5fc/9ae413d1-ae68-4b0a-9e23-18e6cbefb14b/image.png?table=block&id=a2d4b57b-1c0b-44f9-9b5d-2c423a884b69&spaceId=1a99a229-307a-49bf-8774-7ca996d9e5fc&expirationTimestamp=1723572000000&signature=3sYnd8rdLujZP4VaQ6w2mr25iOKtMdh5Ihb4XMoAPus&downloadName=image.png',
    ),
    time: '17:20 ~ 18:00 (KST)',
  ),
  SessionData(
      title: 'TBD',
      // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
      speaker: SpeakerData(
        name: 'Craig Labenz & 이자영',
        bio: 'Flutter @Google',
        imageUrl:
            'https://file.notion.so/f/f/1a99a229-307a-49bf-8774-7ca996d9e5fc/6668a0a1-4ae1-480d-bda3-8278e2d05902/%E1%84%8C%E1%85%A6%E1%84%86%E1%85%A9%E1%86%A8_%E1%84%8B%E1%85%A5%E1%86%B9%E1%84%8B%E1%85%B3%E1%86%B7_(6).png?table=block&id=6e179164-6c62-44a4-9865-ca806341a59a&spaceId=1a99a229-307a-49bf-8774-7ca996d9e5fc&expirationTimestamp=1723572000000&signature=tzwqvUsF_v2ghdC_0gwj-jkLnj8MxOyjnq4Nk1nNR0E&downloadName=%E1%84%8C%E1%85%A6%E1%84%86%E1%85%A9%E1%86%A8+%E1%84%8B%E1%85%A5%E1%86%B9%E1%84%8B%E1%85%B3%E1%86%B7+%286%29.png',
      ),
      time: '18:20 ~ 19:00 (KST)',
      isEnglish: true),
];

class SessionsScreen extends StatelessWidget {
  const SessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SessionCard> sessions = sessionsData
        .map(
          (data) => SessionCard(data: data),
        )
        .toList();

    return Scaffold(
      appBar: ffAppBar(title: 'Sessions'),
      body: Stack(
        children: [
          const BackgroundEffect(),
          SingleChildScrollView(child: Column(children: sessions)),
        ],
      ),
    );
  }
}
