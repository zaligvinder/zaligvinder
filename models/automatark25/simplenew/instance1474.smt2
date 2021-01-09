(declare-const X String)
; 3AFrom\x3Adddrep\x2Edudu\x2Ecomform-data\x3B\x20name=\x22pid\x22
(assert (str.in.re X (str.to.re "3AFrom:dddrep.dudu.comform-data; name=\x22pid\x22\x0a")))
(check-sat)
