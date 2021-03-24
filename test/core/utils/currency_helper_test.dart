import 'package:centic_bids/core/utils/currency_helper.dart';
import 'package:flutter_test/flutter_test.dart';

main(){

  CurrencyHelper currencyHelper;

  setUp((){
    currencyHelper = CurrencyHelper();
  });

  test('should trim commas of the string ', (){
    final text = '123,234,393';

    final result = currencyHelper.trimCommaOfString(text);

    expect(result, '123234393');
  });

}