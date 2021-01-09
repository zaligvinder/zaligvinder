(declare-const X String)
; /^\x2f[0-9a-f]+$/iU
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/iU\x0a")))))
; ^[1-4]{1}[0-9]{4}(-)?[0-9]{7}(-)?[0-9]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "4")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3Ahirmvtg\x2fggqh\.kqhverA-Spy
(assert (not (str.in.re X (str.to.re "Host:hirmvtg/ggqh.kqh\x1bverA-Spy\x0a"))))
(check-sat)
