enum ArticlesEnum { All, Popular, Recent, AuthorChoice, Unknown }

extension ArticlesEnumExtension on ArticlesEnum {
  String get name {
    switch (this) {
      case ArticlesEnum.All:
        return 'All';
      case ArticlesEnum.Popular:
        return 'Popular';
      case ArticlesEnum.Recent:
        return 'Recent';
      case ArticlesEnum.AuthorChoice:
        return "Author's Choice";
      default:
        return "Unknown";
    }
  }
}
