enum ProjectLinkTypeEnum {
  playStore('play-store'),
  appStore('app-store'),
  website('website'),
  repo('code'),
  live('live'),
  apk('apk');

  final String value;
  const ProjectLinkTypeEnum(this.value);

  static ProjectLinkTypeEnum fromString(String val) {
    return ProjectLinkTypeEnum.values.firstWhere(
      (e) => e.value == val,
      orElse: () => ProjectLinkTypeEnum.website,
    );
  }
}

typedef ProjectLinkType = ProjectLinkTypeEnum;

enum SocialLinkTypeEnum {
  linkedin('linkedin'),
  github('github'),
  gmail('gmail'),
  whatsapp('whatsapp'),
  download('download');

  final String value;
  const SocialLinkTypeEnum(this.value);

  static SocialLinkTypeEnum fromString(String val) {
    return SocialLinkTypeEnum.values.firstWhere(
      (e) => e.value == val,
      orElse: () => SocialLinkTypeEnum.github,
    );
  }
}

typedef SocialLinkType = SocialLinkTypeEnum;
