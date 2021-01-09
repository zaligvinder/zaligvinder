(declare-const X String)
; asdbiz\x2Ebiz\dATTENTION\x3Aemail
(assert (str.in.re X (re.++ (str.to.re "asdbiz.biz") (re.range "0" "9") (str.to.re "ATTENTION:email\x0a"))))
(check-sat)
