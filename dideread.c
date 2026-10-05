#include "header.h"

void d_ideread(dword sector, word addr) {
  qword sec;
  sec = sector * 512;
  lseek(disk, sec, SEEK_SET);
  read(disk, ram+addr, 512);
  }
