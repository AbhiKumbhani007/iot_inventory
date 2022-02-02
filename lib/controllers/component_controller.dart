import 'package:get/get.dart';
import 'package:iot/models/component.dart';
import 'package:iot/services/apis.dart';



class ComponentController extends GetxController{
  var componentList = <Component>[].obs;
  var api = Api();
  @override
  void onInit() {
    // TODO: implement onInit
    fetchComponent();
    super.onInit();
  }

  void fetchComponent() async {
    try{
      var component = await api.fetchComponent();
      if(component!.isNotEmpty){
        componentList.value = component as List<Component>;
      }
    }finally{

    }
  }
    
}