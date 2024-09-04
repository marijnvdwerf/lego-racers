.ifnotdef _labels_inc
.set _labels_inc, 1
.macro jlabel label
    .global \label
    \label:
.endm

.macro glabel label
    .global \label
    .type \label, @function
    \label:
.endm
.endif
