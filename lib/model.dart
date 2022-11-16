import 'package:get/get.dart';

class model extends GetxController {

  RxBool s=false.obs;
  RxBool s1=false.obs;
  RxBool s2=false.obs;

  RxInt k=0.obs;

  void check(int i,int price,bool value)
  {
    switch(i)
    {
      case 1:
        s.value=value;
        if(s==true)
          {
            k=k+price;
          }
        else
          {
            k=k-price;
          }
        break;
      case 2:
        s1.value=value;
        if(s1==true)
        {
          k=k+price;
        }
        else
        {
          k=k-price;
        }
        break;
      case 3:
        s2.value=value;
        if(s2==true)
        {
          k=k+price;
        }

        else
        {
          k=k-price;
        }
        break;
    }
  }
}