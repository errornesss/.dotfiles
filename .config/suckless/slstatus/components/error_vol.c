#include <stdio.h>

#include "../util.h"

const char *err_vol(const char *unused) {
  FILE *p = popen("pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}'", "r");
  if (fgetc(p) == 'y') return bprintf("MUTE");
  pclose(p);

  p = popen("pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}'", "r");
  char vol[5];
  fgets(vol, sizeof(vol), p);
  vol[3] = (vol[2] == '%')? '\0' : '%';
  pclose(p);

  return bprintf("%s", vol);
}

