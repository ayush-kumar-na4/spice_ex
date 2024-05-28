import 'package:get/state_manager.dart';

class TabIndexController extends GetxController{
  final RxInt _tabIndex = 0.obs; 
  int get tabindex => _tabIndex.value;


  
  
  set setTabIndexValue (int newValue){
    _tabIndex.value = newValue;
  } 

}