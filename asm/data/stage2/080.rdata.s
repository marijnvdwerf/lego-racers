.include "macro.inc"

.section .rdata

glabel D_8003C2A0
.ascii "%s,\nfile %s, line %d\0\0\0\0"

glabel D_8003C2B8
.ascii "Invalid error condition\0"

glabel D_8003C2D0
.ascii "General error occurred\0\0"

glabel D_8003C2E8
.ascii "Invalid parameter detected\0\0"

glabel D_8003C304
.ascii "Invalid value detected\0\0"

glabel D_8003C31C
.ascii "Out of memory error occured\0"

glabel D_8003C338
.ascii "Critical resource busy\0\0"

glabel D_8003C350
.ascii "Assertion Failed\0\0\0\0"

glabel D_8003C364
.ascii "Unknown error condition occured\0\0\0\0\0"

glabel jtbl_8003C388
.word L80046BE8, L80046BF4, L80046BDC, L80046BD0, L80046BC4, L80046BB8, L80046BAC, L80046BA0
