import 'dart:collection';

class RecentCounter {

  Queue<int> queue = Queue();

  RecentCounter();

  int ping(int t) {
    queue.addLast(t);
    while (queue.first < t - 3000) {
      queue.removeFirst();
    }
    return queue.length;
  }
}
