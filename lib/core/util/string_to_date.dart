
class StringToDate{

  static DateTime convertStringToDate(String date){

    try{
      return DateTime.parse(date);
    }
    catch (e){
      throw FormatException();
    }
  }


}

