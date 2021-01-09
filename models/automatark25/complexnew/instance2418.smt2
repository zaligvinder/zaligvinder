(declare-const X String)
; /filename=[^\n]*\x2ejfi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jfi/i\x0a"))))
; asdbiz\x2Ebiz\dATTENTION\x3Aemail
(assert (not (str.in.re X (re.++ (str.to.re "asdbiz.biz") (re.range "0" "9") (str.to.re "ATTENTION:email\x0a")))))
(check-sat)
