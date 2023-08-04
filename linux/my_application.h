#ifndef FLUTTER_usat_calendarLICATION_H_
#define FLUTTER_usat_calendarLICATION_H_

#include <gtk/gtk.h>

G_DECLARE_FINAL_TYPE(MyApplication, usat_calendarlication, MY, APPLICATION,
                     GtkApplication)

/**
 * usat_calendarlication_new:
 *
 * Creates a new Flutter-based application.
 *
 * Returns: a new #MyApplication.
 */
MyApplication* usat_calendarlication_new();

#endif  // FLUTTER_usat_calendarLICATION_H_
