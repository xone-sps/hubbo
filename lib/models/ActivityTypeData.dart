class ActivityData {
  String name;
  int amount;
  final String description;
  String status;
  String image;
  String foodType;
  ActivityData({this.name, this.amount, this.image, this.description, this.foodType,this.status});
}

List<String> activityTypes = [
  'ການສຶກສາ',
  'ສິ່ງແວດລ້ອມ',
  'ຊ່ວຍສັງຄົມ',
  'ສັດ',
  'ຄົນພິການ',
];

List<ActivityData> activities = [
  ActivityData(
    name: 'ຮັບອາສາສະໝັກຊ່າງຖ່າຍຮູບ ແລະວີດີໂອ ໃນງານ The Power of Volunteering',
    amount: 30,
    status: 'Opening',
    description: 'lorem',
    image: 'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2014/05/Poached-egg-and-bacon-salad-recipe-920x605.jpg',
    foodType: activityTypes[0],
  ),
  ActivityData(
    name: 'ປະກາດຮັບອາສາສະໜັກ ຊ່ວຍງານ 20/20 REFORMAT',
    amount: 25,
    description: 'lorem',
    status: 'Closing',
    image: 'https://ifoodreal.com/wp-content/uploads/2018/04/FG-avocado-salad.jpg',
    foodType: activityTypes[1],
  ),
  ActivityData(
    name: 'ປະກາດຮັບອາສາສະໝັກ! ໃນ​ງານ A NEW YEAR, A NEW ME workshops',
    amount: 20,
    description: 'lorem',
    status: 'Opening',
    image: 'https://iowagirleats.com/wp-content/uploads/2013/01/OrangePancakes_02_mini.jpg',
    foodType: activityTypes[4],
  ),
  ActivityData(
    name: 'Call for 1-month Field translation Intern/ Volunteer',
    amount: 40,
    description: 'lorem',
    status: 'Opening',
    image: 'https://iowagirleats.com/wp-content/uploads/2016/06/Marinated-Vegetable-Salad-iowagirleats-03.jpg',
    foodType: activityTypes[3],
  ),
  ActivityData(
    name: 'ປະກາດຮັບອາສາສະໝັກ ນັກຖ່າຍທອດສົດ! ໃນ​ງານ A NEW YEAR, A NEW ME workshops',
    amount: 45,
    description: 'lorem',
    status: 'Opening',
    image: 'https://iowagirleats.com/wp-content/uploads/2020/02/Vegetable-Egg-Casserole-iowagirleats-Featured-300x300.jpg',
    foodType: activityTypes[1],
  ),
  ActivityData(
    name: 'ປະກາດຮັບອາສາສະໝັກ! ໃນ​ງານ A NEW YEAR, A NEW ME workshops',
    amount: 50,
    description: 'lorem',
    status: 'Opening',
    image: 'https://iowagirleats.com/wp-content/uploads/2019/12/Ham-and-Gnocchi-Mac-and-Cheese-iowagirleats-Featured2-300x300.jpg',
    foodType: activityTypes[2],
  ),
];
