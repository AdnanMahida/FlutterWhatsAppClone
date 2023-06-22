import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../models/home_list_model.dart';

class HomeController extends GetxController {
  // HomeApi homeApi = HomeApi();
  List<HomeListModel> homeList = [];
  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    // fetchHomeList();
    setStaticData();
  }

  void setStaticData() {
    homeList.add(HomeListModel(
        id: 1,
        title: 'Home',
        image: 'assets/images/home.png',
        description: 'Home Screen'));
    homeList.add(HomeListModel(
        id: 2,
        title: 'Setting',
        image: 'assets/images/setting.png',
        description: 'Setting Screen'));
    isLoading = false;
    update();
  }

/*
void fetchHomeList() async {
    var response = await homeApi.getHomeList();
    if(response != null){
      response['results'].forEach((data) {
        homeList.add(HomeListModel.fromMap(data));
      });
      isLoading = false;
      update();
    }
  }
*/
}
