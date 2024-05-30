`define STATE_CACHE_STANDBY 2'b00
`define STATE_CACHE_READ 2'b01
`define STATE_CACHE_WRITE_READ 2'b10
`define STATE_CACHE_WRITE_WRITE 2'b11

`define CACHE_LINE_SIZE 16
`define CACHE_SET_BITS 2
`define CACHE_SET_COUNT (1 << (`CACHE_SET_BITS))
`define CACHE_WAY_BITS 2
`define CACHE_WAY_COUNT (1 << (`CACHE_WAY_BITS))

`define CACHE_TAG_BITS (28 - `CACHE_SET_BITS)
`define CACHE_IDX_BITS `CACHE_SET_BITS
`define CACHE_BLO_BITS 2
`define CACHE_GRANULI  2

`define CACHE_TAG_FIELD (`CACHE_TAG_BITS + `CACHE_SET_BITS + `CACHE_BLO_BITS + `CACHE_GRANULI - 1):(`CACHE_SET_BITS + `CACHE_BLO_BITS + `CACHE_GRANULI)
`define CACHE_IDX_FIELD (`CACHE_SET_BITS + `CACHE_BLO_BITS + `CACHE_GRANULI - 1):(`CACHE_BLO_BITS + `CACHE_GRANULI)
`define CACHE_BLO_FIELD (`CACHE_BLO_BITS + `CACHE_GRANULI - 1):(`CACHE_GRANULI)

`define ACTION_EMPTY_CACHE 1
`define ACTION_ALLOC_CACHE 2
`define ACTION_WRITE_CACHE 4
