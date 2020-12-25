import 'package:beautiful_forms/model/phone.dart';
import 'package:intl/intl.dart';

class Queue {
  String restaurantName;
  List<Subscription> subscriptions;

  Queue(this.restaurantName, this.subscriptions);

  static Queue newFromMap(Map map) {
    //TODO delete variables
    var restaurantName = map['restaurantName'];
    List<Subscription> subscriptions = map['subscriptions']
        .map<Subscription>((e) => Subscription.newFromMap(e))
        .toList();

    return new Queue(restaurantName, subscriptions);
  }

  List<Subscription> getEatSubscriptions() {
    return subscriptions
        .where((e) => e.getTag('type').hasValue('eat'))
        .toList();
  }

  List<Subscription> getCoffeeSubscriptions() {
    return subscriptions
        .where((e) => e.getTag('type').hasValue('coffee'))
        .toList();
  }

  List<Subscription> getDrinksSubscriptions() {
    return subscriptions
        .where((e) => e.getTag('type').hasValue('drinks'))
        .toList();
  }

  List<Subscription> filterSubscriptionsByTag(
      String tagName, List<String> values) {
    return subscriptions.where((e) => e.getTag(tagName).valueIn(values)).toList();
  }

  int getNumberOfClients() {
    return subscriptions
        .map<int>((e) => e.tableSize)
        .fold(0, (previousValue, element) => previousValue + element);
  }

  int getNumberOfTables() {
    return subscriptions.length;
  }
}

class Subscription {
  String consumedAt;
  Customer customer;
  String deletedAt;
  String restaurantName;
  Restaurant restaurant;
  int tableSize;
  List<Tag> tags;
  String subscribedAt;
  String uniqueId;

  Subscription(
      this.consumedAt,
      this.customer,
      this.deletedAt,
      this.restaurantName,
      this.restaurant,
      this.tableSize,
      this.tags,
      this.subscribedAt,
      this.uniqueId);

  DateTime getSubscribedAtDateTime() {
    return DateFormat('yyyy/MM/dd-hh:mm').parse(
        '${this.subscribedAt.substring(0, 4)}/'
            '${this.subscribedAt.substring(4, 6)}/'
            '${this.subscribedAt.substring(6, 8)}-'
            '${this.subscribedAt.substring(8, 10)}:'
            '${this.subscribedAt.substring(10)}');
  }

  static Subscription newFromMap(Map map) {
    var subscriptions = new Subscription(
        map['consumedAt'],
        Customer.newFromMap(map['customer']),
        map['deletedAt'],
        map['restaurantName'],
        Restaurant.newFromMap(map['restaurant']),
        map['tableSize'],
        map['tags'].map<Tag>((e) => Tag.newFromMap(e)).toList(),
        map['subscribedAt'],
        map['uniqueId']);

    return subscriptions;
  }

  Tag getTag(String name) {
    return this.tags.where((element) => element.name == name).toList()[0];
  }
}

class Tag {
  String name;
  String value;

  Tag(this.name, this.value);

  static Tag newFromMap(Map map) {
    // TODO delete variable
    Tag tag = new Tag(map['name'], map['value']);

    return tag;
  }

  hasValue(String value) {
    return this.value == value;
  }

  valueIn(List<String> values) {
    return values.contains(this.value);
  }
}

class Restaurant {
  String location;
  List<Message> messages;
  Owner owner;
  String restaurantName;
  List<Filter> filters;

  Restaurant(this.location, this.messages, this.owner, this.restaurantName,
      this.filters);

  static Restaurant newFromMap(Map map) {
    return new Restaurant(
        map['location'],
        (map['messages'].map<Message>((e) => Message.newFromMap(e))).toList(),
        Owner.newOwnerFromMap(map['owner']),
        map['restaurantName'],
        map['filters'].map<Filter>((e) => Filter.newFromMap(e)).toList());
  }
}

class Filter {
  String name;
  List<String> options;

  Filter(this.name, this.options);

  static Filter newFromMap(Map map) {
    return new Filter(
        map['name'], map['options'].map<String>((e) => e.toString()).toList());
  }
}

class Owner {
  int age;
  OwnerContactData contactData;
  String name;

  Owner(this.age, this.contactData, this.name);

  static newOwnerFromMap(Map map) {
    return new Owner(map['age'],
        OwnerContactData.newFromContactData(map['contactData']), map['name']);
  }
}

class OwnerContactData {
  String email;
  Phone phone;

  OwnerContactData(this.email, this.phone);

  static OwnerContactData newFromContactData(Map map) {
    return new OwnerContactData(map['email'], new Phone(map['phoneNumber']));
  }
}

class Message {
  String name;
  String text;

  Message(this.name, this.text);

  static Message newFromMap(Map map) {
    return new Message(map['name'], map['text']);
  }
}

class Customer {
  CustomerContactData contactData;
  String name;

  Customer(this.contactData, this.name);

  static Customer newFromMap(Map map) {
    return new Customer(
        CustomerContactData.newFromMap(map['contactData']), map['name']);
  }
}

class CustomerContactData {
  Phone phone;

  CustomerContactData(this.phone);

  static CustomerContactData newFromMap(Map map) {
    return new CustomerContactData(new Phone(map['phoneNumber']));
  }
}
