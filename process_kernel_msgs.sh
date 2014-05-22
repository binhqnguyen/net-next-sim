#!/bin/bash

#
#Grep kernel printk messages to get icsk_timeout, icsk_rto, and cwnd.
#
INPUT="messages"

grep "icsk_timeout" $INPUT > timeout.data
grep "snd_cwnd" $INPUT > cwnd.data
grep "inet_csk_reset_xmit_timer" $INPUT > rto_timer_reset.data
grep "tcp_enter_loss" $INPUT > loss_retran.data
