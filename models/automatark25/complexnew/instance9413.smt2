(declare-const X String)
; ^([7-9]{1})([0-9]{9})$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "7" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3AIPAsynchaveAdToolszopabora\x2Einfo
(assert (not (str.in.re X (str.to.re "Host:IPAsynchaveAdToolszopabora.info\x0a"))))
; /^User-Agent\x3a\x20[A-Z]{9}\x0d\x0a/Hm
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent: ") ((_ re.loop 9 9) (re.range "A" "Z")) (str.to.re "\x0d\x0a/Hm\x0a")))))
(check-sat)
