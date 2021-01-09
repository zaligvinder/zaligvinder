(declare-const X String)
; Iterenet\s+www\x2Emirarsearch\x2EcomHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Iterenet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.mirarsearch.comHost:\x0a")))))
(check-sat)
