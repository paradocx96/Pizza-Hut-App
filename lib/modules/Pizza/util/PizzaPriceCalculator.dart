import 'package:pizzahut/modules/Pizza/models/PizzaRangeModel.dart';

class PizzaPriceCalculator{
  List<PizzaRangeModel> ranges = [
    PizzaRangeModel("Classic", 500, 1100, 1900, 530, 1200, 2200, 520, 1150, 2100, 450, 900, 1700),
    PizzaRangeModel("Favourites", 500, 1100, 1900, 530, 1200, 2200, 520, 1150, 2100, 450, 900, 1700),
  ];

  int calculatePrice(String range, String size, String crust){
    int price = 0;

    late PizzaRangeModel selectedRange;

    //iterate through the ranges
    for(var i = 0; i < ranges.length; i++){

      //if the range name matches with the parameter range,
      // select the range in the list to selectedRange
      if(range == ranges[i].name){
        selectedRange = ranges[i];
      }
    }

    if(size == "Personal"){
      if(crust == "Pan"){
        price = selectedRange.panPersonalPrice;
      }
      else if (crust == "Stuffed"){
        price = selectedRange.stuffedPersonalPrice;
      }
      else if (crust == "Sausage"){
        price = selectedRange.sausagePersonalPrice;
      }
      else if (crust == "Thin"){
        price = selectedRange.thinPersonalPrice;
      }
      else{
        print("Given crust is not valid");
      }
    }
    else if(size == "Medium"){

      if(crust == "Pan"){
        price = selectedRange.panMediumPrice;
      }
      else if (crust == "Stuffed"){
        price = selectedRange.stuffedMediumPrice;
      }
      else if (crust == "Sausage"){
        price = selectedRange.sausageMediumPrice;
      }
      else if (crust == "Thin"){
        price = selectedRange.thinMediumPrice;
      }
      else{
        print("Given crust is not valid");
      }

    }
    else if(size == "Large"){

      if(crust == "Pan"){
        price = selectedRange.panLargePrice;
      }
      else if (crust == "Stuffed"){
        price = selectedRange.stuffedLargePrice;
      }
      else if (crust == "Sausage"){
        price = selectedRange.sausageLargePrice;
      }
      else if (crust == "Thin"){
        price = selectedRange.thinLargePrice;
      }
      else{
        print("Given crust is not valid");
      }

    }
    else{
      print("Given size is not valid");
    }

    return price;
  }
}