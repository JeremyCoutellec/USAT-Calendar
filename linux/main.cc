#include "usat_calendarlication.h"

int main(int argc, char** argv) {
  g_autoptr(MyApplication) app = usat_calendarlication_new();
  return g_application_run(G_APPLICATION(app), argc, argv);
}
