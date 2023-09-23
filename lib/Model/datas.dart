class MyDatas {
  final String name;
  final String imageURL;
  final String description;

  MyDatas({
    required this.name,
    required this.imageURL,
    required this.description,
  });
}

final List<MyDatas> listData = [
  MyDatas(
      name: 'Dr Joy Anozie',
      imageURL: 'assets/images/doc1.png',
      description:
          """Dr. Joy was born in Enugu, and is a graduate of Lagos state
   University.  and her residency is currrently at Thomas Jefferson University London,  Wills Eye
   Hospital, and she completed her training with fellowships at the University of London in cataract and corneal surgery. She has four years’ experience in ophthalmic surgery"""),
  MyDatas(
      name: 'Dr. Johnson Adewale',
      imageURL: 'assets/images/doc2.png',
      description:
          """Dr. Johnson Adewale is a distinguished male physician who has dedicated his life to the pursuit of healing and compassionate patient care. With a career spanning over two decades, he has left an indelible mark on the medical field through his expertise, innovation, and unwavering commitment to improving live"""),
  MyDatas(
      name: 'Dr. Matthew Effiong',
      imageURL: 'assets/images/doc5.png',
      description: """

Born and raised in a close-knit community, Dr. Anderson's innate curiosity and passion for science became evident at a young age. He pursued his dream of becoming a physician with unyielding determination, earning his medical degree from a prestigious institution.
Dr. Matthew Effiong contributions have not gone unnoticed. He has been the recipient of numerous awards, accolades, and honors from both his peers and institutions, highlighting his exceptional contributions to the medical field.."""),
];

// class MySecondDatas {
//   final String mname;
//   final String mimageURL;
//   final String mdescription;

//   MySecondDatas({
//     required this.mname,
//     required this.mimageURL,
//     required this.mdescription,
//   });
// }

// final List<MySecondDatas> secondData = [];
