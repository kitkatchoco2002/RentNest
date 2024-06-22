class RPricing_calculator{

  // -- calculate price based on shipping
  static double calculateTotalPrice(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + shippingCost;
    return totalPrice;
  }
  // -- calculate shipping cost
  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static double getShippingCost(location) {
    //lookupshipping cost for the given location using a shipping API
    return 60.00;
}
}

