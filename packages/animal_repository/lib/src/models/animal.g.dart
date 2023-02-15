// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'animal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Animal _$AnimalFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Animal',
      json,
      ($checkedConvert) {
        final val = Animal(
          id: $checkedConvert('animal_id', (v) => v as int),
          subId: $checkedConvert('animal_subid', (v) => v as String),
          areaPkid: $checkedConvert('animal_area_pkid', (v) => v as int),
          shelterPkid: $checkedConvert('animal_shelter_pkid', (v) => v as int),
          place: $checkedConvert('animal_place', (v) => v as String),
          kind: $checkedConvert('animal_kind', (v) => v as String),
          variety: $checkedConvert('animal_Variety', (v) => v as String),
          sex: $checkedConvert('animal_sex', (v) => v as String),
          bodyType: $checkedConvert('animal_bodytype', (v) => v as String),
          colour: $checkedConvert('animal_colour', (v) => v as String),
          age: $checkedConvert('animal_age', (v) => v as String),
          sterilization:
              $checkedConvert('animal_sterilization', (v) => v as String),
          bacterin: $checkedConvert('animal_bacterin', (v) => v as String),
          foundPlace: $checkedConvert('animal_foundplace', (v) => v as String),
          title: $checkedConvert('animal_title', (v) => v as String),
          status: $checkedConvert('animal_status', (v) => v as String),
          remark: $checkedConvert('animal_remark', (v) => v as String),
          caption: $checkedConvert('animal_caption', (v) => v as String),
          openDate: $checkedConvert('animal_opendate', (v) => v as String),
          closedDate: $checkedConvert('animal_closeddate', (v) => v as String),
          update: $checkedConvert('animal_update', (v) => v as String),
          createTime: $checkedConvert('animal_createtime', (v) => v as String),
          shelterName: $checkedConvert('shelter_name', (v) => v as String),
          shelterAddress:
              $checkedConvert('shelter_address', (v) => v as String),
          shelterTel: $checkedConvert('shelter_tel', (v) => v as String),
          albumFile: $checkedConvert('album_file', (v) => v as String),
          albumUpdate: $checkedConvert('album_update', (v) => v as String),
          cDate: $checkedConvert('cDate', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'animal_id',
        'subId': 'animal_subid',
        'areaPkid': 'animal_area_pkid',
        'shelterPkid': 'animal_shelter_pkid',
        'place': 'animal_place',
        'kind': 'animal_kind',
        'variety': 'animal_Variety',
        'sex': 'animal_sex',
        'bodyType': 'animal_bodytype',
        'colour': 'animal_colour',
        'age': 'animal_age',
        'sterilization': 'animal_sterilization',
        'bacterin': 'animal_bacterin',
        'foundPlace': 'animal_foundplace',
        'title': 'animal_title',
        'status': 'animal_status',
        'remark': 'animal_remark',
        'caption': 'animal_caption',
        'openDate': 'animal_opendate',
        'closedDate': 'animal_closeddate',
        'update': 'animal_update',
        'createTime': 'animal_createtime',
        'shelterName': 'shelter_name',
        'shelterAddress': 'shelter_address',
        'shelterTel': 'shelter_tel',
        'albumFile': 'album_file',
        'albumUpdate': 'album_update'
      },
    );
