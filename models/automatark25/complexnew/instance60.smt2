(declare-const X String)
; "^[A-Z]{1}\d{7}$
(assert (not (str.in.re X (re.++ (str.to.re "\x22") ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; Host\x3AIPAsynchaveAdToolszopabora\x2Einfo
(assert (not (str.in.re X (str.to.re "Host:IPAsynchaveAdToolszopabora.info\x0a"))))
(check-sat)
