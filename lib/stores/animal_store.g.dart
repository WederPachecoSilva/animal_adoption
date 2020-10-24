// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AnimalStore on _AnimalStoreBase, Store {
  final _$nameAtom = Atom(name: '_AnimalStoreBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$genderAtom = Atom(name: '_AnimalStoreBase.gender');

  @override
  String get gender {
    _$genderAtom.reportRead();
    return super.gender;
  }

  @override
  set gender(String value) {
    _$genderAtom.reportWrite(value, super.gender, () {
      super.gender = value;
    });
  }

  final _$ageInMonthsAtom = Atom(name: '_AnimalStoreBase.ageInMonths');

  @override
  int get ageInMonths {
    _$ageInMonthsAtom.reportRead();
    return super.ageInMonths;
  }

  @override
  set ageInMonths(int value) {
    _$ageInMonthsAtom.reportWrite(value, super.ageInMonths, () {
      super.ageInMonths = value;
    });
  }

  final _$typeAtom = Atom(name: '_AnimalStoreBase.type');

  @override
  String get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(String value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  final _$priceAtom = Atom(name: '_AnimalStoreBase.price');

  @override
  double get price {
    _$priceAtom.reportRead();
    return super.price;
  }

  @override
  set price(double value) {
    _$priceAtom.reportWrite(value, super.price, () {
      super.price = value;
    });
  }

  final _$ownerAtom = Atom(name: '_AnimalStoreBase.owner');

  @override
  String get owner {
    _$ownerAtom.reportRead();
    return super.owner;
  }

  @override
  set owner(String value) {
    _$ownerAtom.reportWrite(value, super.owner, () {
      super.owner = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_AnimalStoreBase.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  @override
  String toString() {
    return '''
name: ${name},
gender: ${gender},
ageInMonths: ${ageInMonths},
type: ${type},
price: ${price},
owner: ${owner},
description: ${description}
    ''';
  }
}
