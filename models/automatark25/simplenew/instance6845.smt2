(declare-const X String)
; Host\x3A00000www\x2Ezhongsou\x2Ecom
(assert (str.in.re X (str.to.re "Host:00000www.zhongsou.com\x0a")))
(check-sat)
