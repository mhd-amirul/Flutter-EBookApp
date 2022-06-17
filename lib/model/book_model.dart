class BookList {
  String imageUrl;
  String writers;
  String title;
  String fileRead;
  String description;
  String rating;
  String pages;
  String language;

  BookList(
    {
      required this.imageUrl,
      required this.writers,
      required this.title,
      required this.fileRead,
      required this.description,
      required this.rating,
      required this.pages,
      required this.language,
    }
  );
}

List<BookList> bookLists = [
  BookList(
    imageUrl: 'assets/images/tere-liye-bumi.jpg',
    writers: 'Tere Liye',
    title: 'Bumi',
    language: 'IND',
    description: 'Pada saat itu, makhluk kurus dan tinggi itu tiba-tiba hadir di dalam cermin kamar Raib.',
    rating: '4.28',
    pages: '376',
    fileRead: 'assets/documents/tere-liye-bumi.pdf'
  ),
  BookList(
    imageUrl: 'assets/images/tere-liye-bulan.jpg',
    writers: 'Tere Liye',
    title: 'Bulan',
    language: 'IND',
    pages: '401',
    description: 'Penjelajahan mereka pada novel kedua serial Bumi ini bermula dari tujuan mereka untuk mempersatukan antara klan Bulan dan klan Matahari.',
    rating: '4.41',
    fileRead: 'assets/documents/tere-liye-bulan.pdf'
  ),
  BookList(
    imageUrl: 'assets/images/tere-liye-bibi-gill.jpeg',
    writers: 'Tere Liye',
    title: 'Bibi Gill',
    language: 'IND',
    pages: '686',
    description: 'Inilah kisah tentang Bibi Gill, yang sejak kecil berusaha mengalahkan (monster) dalam hidupnya',
    rating: '4.32',
    fileRead: 'assets/documents/tere-liye-bibi-gill.pdf'
  ),
  BookList(
    imageUrl: 'assets/images/tere-liye-lumpu.jpg',
    writers: 'Tere Liye',
    title: 'Lumpu',
    language: 'IND',
    pages: '684',
    description: 'mereka hendak berpetualang kembali dengan kapsul terbang, yakni ILY yang telah diciptakan oleh Ali si genius. Tujuannya adalah mereka akan mengunjungi klan Nebula',
    rating: '4.41',
    fileRead: 'assets/documents/tere-liye-lumpu.pdf'
  ),
  BookList(
    imageUrl: 'assets/images/tere-liye-matahari.jpg',
    writers: 'Tere Liye',
    title: 'Matahari',
    language: 'IND',
    pages: '403',
    description: 'Awalnya, Ali hanya penasaran, kemudian membawa kedua sahabatnya, yaitu Raib dan Seli untuk mewujudkan rasa penasaran Ali dengan mengajak mereka berjelajah ke rahim atau perut Bumi.',
    rating: '4.43',
    fileRead: 'assets/documents/tere-liye-matahari.pdf'
  ),
  BookList(
    imageUrl: 'assets/images/tere-liye-nebula.jpg',
    writers: 'Tere Liye',
    title: 'Nebula',
    language: 'IND',
    pages: '420',
    description: 'Nebula bercerita tentang masa muda Selena yang nantinya akan menjadi guru matematika kesayangan Raib, Seli, dan Ali di dunia Klan Bumi,',
    rating: '4.39',
    fileRead: 'assets/documents/tere-liye-nebula.pdf'
  ),
  BookList(
    imageUrl: 'assets/images/tere-liye-selena.jpg',
    writers: 'Tere Liye',
    title: 'Selena',
    language: 'IND',
    pages: '408',
    description: 'Miss Selena yang merupakan guru Matematika di sekolah mereka. Akan tetapi, ternyata Miss Selena atau Miss Keriting ini juga seorang petarung hebat',
    rating: '4.30',
    fileRead: 'assets/documents/tere-liye-selena.pdf'
  ),
  BookList(
    imageUrl: 'assets/images/tere-liye-si-putih.jpg',
    writers: 'Tere Liye',
    title: 'Si Putih',
    language: 'IND',
    pages: '747',
    description: 'Si Putih, kucing kesayangan Raib. Kucing yang pada saat itu berada di depan pintu rumahnya sebagai hadiah hari kelahiran Raib.',
    rating: '4.24',
    fileRead: 'assets/documents/tere-liye-si-putih.pdf'
  ),
  BookList(
    imageUrl: 'assets/images/tere-liye-ceroz-and-batazor.jpg',
    writers: 'Tere Liye',
    title: 'Ceroz And Batazor',
    language: 'IND',
    pages: '380',
    description: 'Ceros dan Batozar adalah dua part yang berbeda. Ceros merupakan dua makhluk raksasa yang bersembunyi di bawah pada suatu monumen yang cukup terkenal akan historinya.',
    rating: '4.43',
    fileRead: 'assets/documents/tere-liye-ceroz-and-batazor.pdf'
  ),
];