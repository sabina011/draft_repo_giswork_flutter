String getCalculatedDistanceUnits(double number) {
  int BASE_NUMBER_IN_KM = 1000;
  String value = '';
  if (number > BASE_NUMBER_IN_KM) {
    int kmValue = (number / BASE_NUMBER_IN_KM).floor();
    double result = number / BASE_NUMBER_IN_KM;
    double decimal = result - kmValue;
    double meterValue =(decimal * BASE_NUMBER_IN_KM);
    value = '$kmValue' + 'km ' + '${meterValue.toStringAsFixed(1)}' + 'm';
  } else {
    value = '$number' + 'm';
  }
  return value;
}