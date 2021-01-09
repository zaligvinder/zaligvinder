(declare-const X String)
; Host\x3AX-Mailer\x3atoolbar\.wishbone\.com
(assert (str.in.re X (str.to.re "Host:X-Mailer:\x13toolbar.wishbone.com\x0a")))
(check-sat)
