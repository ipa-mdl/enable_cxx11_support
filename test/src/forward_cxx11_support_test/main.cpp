#include <thread>

void do_nothing() {
}

int main() {
  std::thread t(do_nothing);
  t.join();

  return 0;
}
