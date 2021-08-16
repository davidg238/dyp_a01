// Copyright 2021 Ekorau LLC

import pubsub
import gpio

import .dyp_ao1

topic ::= "cloud:range_tank"

main:

  dyp := DYP_A01
    --tx_pin=22
    --rx_pin=21

  msg := "{\"r\": $(dyp.range)}"
  print msg
  pubsub.publish topic msg

  dyp.off