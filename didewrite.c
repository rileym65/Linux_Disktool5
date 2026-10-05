#include "header.h"

void d_idewrite(dword sector, word addr) {
  qword sec;
  sec = sector * 512;
  lseek(disk, sec, SEEK_SET);
  write(disk, ram+addr, 512);
  }
