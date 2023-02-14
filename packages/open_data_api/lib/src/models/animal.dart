import 'package:json_annotation/json_annotation.dart';
part 'animal.g.dart';

@JsonSerializable()
class Animal {
  @JsonKey(name: 'animal_id')
  final int id;

  @JsonKey(name: 'animal_subid')
  final String subId;

  @JsonKey(name: 'animal_area_pkid')
  final int areaPkid;

  @JsonKey(name: 'animal_shelter_pkid')
  final int shelterPkid;

  @JsonKey(name: 'animal_place')
  final String place;

  @JsonKey(name: 'animal_kind')
  final String kind;

  @JsonKey(name: 'animal_Variety')
  final String variety;

  @JsonKey(name: 'animal_sex')
  final String sex;

  @JsonKey(name: 'animal_bodytype')
  final String bodyType;

  @JsonKey(name: 'animal_colour')
  final String colour;

  @JsonKey(name: 'animal_age')
  final String age;

  @JsonKey(name: 'animal_sterilization')
  final String sterilization;

  @JsonKey(name: 'animal_bacterin')
  final String bacterin;

  @JsonKey(name: 'animal_foundplace')
  final String foundPlace;

  @JsonKey(name: 'animal_title')
  final String title;

  @JsonKey(name: 'animal_status')
  final String status;

  @JsonKey(name: 'animal_remark')
  final String remark;

  @JsonKey(name: 'animal_caption')
  final String caption;

  @JsonKey(name: 'animal_opendate')
  final String openDate;

  @JsonKey(name: 'animal_closeddate')
  final String closedDate;

  @JsonKey(name: 'animal_update')
  final String update;

  @JsonKey(name: 'animal_createtime')
  final String createTime;

  @JsonKey(name: 'shelter_name')
  final String shelterName;

  @JsonKey(name: 'shelter_address')
  final String shelterAddress;

  @JsonKey(name: 'shelter_tel')
  final String shelterTel;

  @JsonKey(name: 'album_file')
  final String albumFile;

  @JsonKey(name: 'album_update')
  final String albumUpdate;

  @JsonKey(name: 'cDate')
  final String cDate;

  const Animal({
    required this.id,
    required this.subId,
    required this.areaPkid,
    required this.shelterPkid,
    required this.place,
    required this.kind,
    required this.variety,
    required this.sex,
    required this.bodyType,
    required this.colour,
    required this.age,
    required this.sterilization,
    required this.bacterin,
    required this.foundPlace,
    required this.title,
    required this.status,
    required this.remark,
    required this.caption,
    required this.openDate,
    required this.closedDate,
    required this.update,
    required this.createTime,
    required this.shelterName,
    required this.shelterAddress,
    required this.shelterTel,
    required this.albumFile,
    required this.albumUpdate,
    required this.cDate,
  });

  /// Connect the generated [_$AnimalFromJson] function to the `fromJson`
  /// factory.
  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);
}



  // {
  //   "animal_id": 294749,
  //   "animal_subid": "LAAAG1120119G1",
  //   "animal_area_pkid": 17,
  //   "animal_shelter_pkid": 75,
  //   "animal_place": "高雄市壽山動物保護教育園區",
  //   "animal_kind": "狗",
  //   "animal_Variety": "瑪爾濟斯犬           ",
  //   "animal_sex": "M",
  //   "animal_bodytype": "SMALL",
  //   "animal_colour": "白色",
  //   "animal_age": "ADULT",
  //   "animal_sterilization": "F",
  //   "animal_bacterin": "F",
  //   "animal_foundplace": "里林東路",
  //   "animal_title": "",
  //   "animal_status": "OPEN",
  //   "animal_remark": "",
  //   "animal_caption": "",
  //   "animal_opendate": "",
  //   "animal_closeddate": "2999-12-31",
  //   "animal_update": "2023/02/13",
  //   "animal_createtime": "2023/02/13",
  //   "shelter_name": "高雄市壽山動物保護教育園區",
  //   "album_file": "https://www.pet.gov.tw/upload/pic/1676268326686.png",
  //   "album_update": "",
  //   "cDate": "2023/02/13",
  //   "shelter_address": "高雄市鼓山區萬壽路350號",
  //   "shelter_tel": "07-5519059"
  // },