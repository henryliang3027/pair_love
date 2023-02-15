import 'package:animal_repository/animal_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Animal', () {
    group('fromJson', () {
      test('return correct Animal Object', () {
        expect(
            Animal.fromJson(<String, dynamic>{
              "animal_id": 293918,
              "animal_subid": "CAAAG1120206005",
              "animal_area_pkid": 6,
              "animal_shelter_pkid": 61,
              "animal_place": "桃園市動物保護教育園區",
              "animal_kind": "狗",
              "animal_Variety": "吉娃娃犬",
              "animal_sex": "M",
              "animal_bodytype": "SMALL",
              "animal_colour": "黃白色",
              "animal_age": "ADULT",
              "animal_sterilization": "F",
              "animal_bacterin": "F",
              "animal_foundplace": "秀才里秀才路",
              "animal_title": "",
              "animal_status": "OPEN",
              "animal_remark": "",
              "animal_caption": "",
              "animal_opendate": "",
              "animal_closeddate": "2999-12-31",
              "animal_update": "2023/02/14",
              "animal_createtime": "2023/02/06",
              "shelter_name": "桃園市動物保護教育園區",
              "album_file":
                  "https://www.pet.gov.tw/upload/pic/1675666831817.png",
              "album_update": "",
              "cDate": "2023/02/14",
              "shelter_address": "桃園市新屋區永興里3鄰藻礁路1668號",
              "shelter_tel": "03-4861760"
            }),
            isA<Animal>()
                .having((p) => p.id, 'id', 293918)
                .having((p) => p.subId, 'subId', 'CAAAG1120206005')
                .having((p) => p.areaPkid, 'areaPkid', 6)
                .having((p) => p.shelterPkid, 'shelterPkid', 61)
                .having((p) => p.kind, 'kind', '狗')
                .having((p) => p.variety, 'variety', '吉娃娃犬')
                .having((p) => p.sex, 'sex', 'M')
                .having((p) => p.bodyType, 'bodyType', 'SMALL')
                .having((p) => p.colour, 'colour', '黃白色')
                .having((p) => p.age, 'age', 'ADULT')
                .having((p) => p.sterilization, 'sterilization', 'F')
                .having((p) => p.bacterin, 'bacterin', 'F')
                .having((p) => p.foundPlace, 'foundPlace', '秀才里秀才路')
                .having((p) => p.title, 'title', '')
                .having((p) => p.status, 'status', 'OPEN')
                .having((p) => p.remark, 'remark', '')
                .having((p) => p.caption, 'caption', '')
                .having((p) => p.openDate, 'openDate', '')
                .having((p) => p.closedDate, 'closedDate', '2999-12-31')
                .having((p) => p.update, 'update', '2023/02/14')
                .having((p) => p.createTime, 'createTime', '2023/02/06')
                .having((p) => p.shelterName, 'shelterName', '桃園市動物保護教育園區')
                .having((p) => p.albumFile, 'albumFile',
                    'https://www.pet.gov.tw/upload/pic/1675666831817.png')
                .having((p) => p.albumUpdate, 'albumUpdate', '')
                .having((p) => p.cDate, 'cDate', '2023/02/14')
                .having((p) => p.shelterAddress, 'shelterAddress',
                    '桃園市新屋區永興里3鄰藻礁路1668號')
                .having((p) => p.shelterTel, 'shelterTel', '03-4861760'));
      });
    });
  });
}
