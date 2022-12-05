.section .data

.word 0x80371240       /* PI BSB Domain 1 register */
.word 0x0000000F       /* Clockrate setting */
.word 0x80000400       /* Entrypoint address */
.word 0x00001444       /* Revision */
.word 0xF478D8B3       /* Checksum 1 */
.word 0x9716DD6D       /* Checksum 2 */
.word 0x00000000       /* Unknown 1 */
.word 0x00000000       /* Unknown 2 */
.ascii "LEGORacers          " /* Internal name */
.word 0x00000000       /* Unknown 3 */
.word 0x0000004E       /* Cartridge */
.ascii "LG"            /* Cartridge ID */
.ascii "P"             /* Country code */
.byte 0x00             /* Version */
