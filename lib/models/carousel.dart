class Carousel {
  final String image;
  final String path;

  Carousel({
    required this.image,
    required this.path,
  });
}

List<Carousel> carouselList = [
  Carousel(
    image: 'assets/images/vk.png',
    path: 'https://vk.com/artemlvovich1',
  ),
  Carousel(
    image: 'assets/images/you_tube.png',
    path: 'https://www.youtube.com/channel/UCO34M0CblpX_wJZPsINzr_w',
  ),
  Carousel(
      image: 'assets/images/word.png',
      path:
          'https://docs.google.com/document/d/1VcP9aXr2No8vlDlsQ0s0gfJsY2Kr02fS_qL2kOrxdCM/edit?usp=share_link'),
  Carousel(
      image: 'assets/images/exel.png',
      path:
          'https://docs.google.com/spreadsheets/d/1MFn3YZPUSaGCPgLIbL6WMwy8hZw7f172/edit?usp=share_link&ouid=103514039146600279069&rtpof=true&sd=true'),
];
