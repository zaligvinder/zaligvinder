(declare-const X String)
; Host\x3AIPAsynchaveAdToolszopabora\x2Einfo
(assert (str.in.re X (str.to.re "Host:IPAsynchaveAdToolszopabora.info\x0a")))
; ^((\+)?(\d{2}[-]))?(\d{10}){1}?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
