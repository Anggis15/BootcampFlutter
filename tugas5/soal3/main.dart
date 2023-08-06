import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';
import 'titan.dart';

void main(List<String> args) {
  Armor_titan titanArmor = new Armor_titan();
  Attack_TItan titanAttack = new Attack_TItan();
  Beast_Titan beastTitan = new Beast_Titan();
  Human human = new Human();
  Titan titan = new Titan();

  titanArmor.set_PowerPoint = 10;
  titanAttack.set_PowerPoint = 8;
  beastTitan.set_PowerPoint = 7;
  human.set_PowerPoint = 5;
  titan.set_PowerPoint = 6;

  print(titanAttack.punch());
  print(titanArmor.terjang());
  print(beastTitan.lempar());
  print(human.killAlltitan());
}
