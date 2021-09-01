// Copyright 2021 Ekorau LLC

import pubsub
import gpio

import dyp_ao1 show DYP_A01

main:

  dyp := DYP_A01
    --tx_pin=22
    --rx_pin=21

  msg := "{\"range\": $(dyp.range) mm}"
  print msg

  dyp.off