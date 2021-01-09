(declare-const X String)
; Host\x3AYOURcache\x2Eeverer\x2Ecomwww\x2Epurityscan\x2Ecom
(assert (str.in.re X (str.to.re "Host:YOURcache.everer.comwww.purityscan.com\x0a")))
(check-sat)
