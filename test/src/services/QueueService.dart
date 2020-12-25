import '../clients/QueueClient.dart';
import '../model/Queue.dart';

class QueueService {
  static QueueClient queueClient = new QueueClient();

  static Future<Queue> getQueue(String restaurantName) async {
    Queue queue = Queue.newFromMap((await QueueService.queueClient.getRestaurantQueue(restaurantName))['queue']);
    queue.subscriptions.sort((a, b) {
      return int.parse(a.subscribedAt).compareTo(int.parse(b.subscribedAt));
    });

    return queue;
  }

  static Future<void> createSubscription(String restaurantName, Map<String, dynamic> subscription) async {
    await QueueService.queueClient.createSubscription(restaurantName, subscription);
  }
}
