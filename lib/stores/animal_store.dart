import 'package:mobx/mobx.dart';

part 'animal_store.g.dart';

class AnimalStore = _AnimalStoreBase with _$AnimalStore;

abstract class _AnimalStoreBase with Store {
  @observable
  String name;

  @observable
  String gender;

  @observable
  int ageInMonths;

  @observable
  String type;

  @observable
  double price;

  @observable
  String owner;

  @observable
  String description;
}
