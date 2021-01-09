(declare-const X String)
; /filename=[^\n]*\x2ej2k/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".j2k/i\x0a")))))
; Iterenet\s+www\x2Emirarsearch\x2EcomHost\x3A
(assert (str.in.re X (re.++ (str.to.re "Iterenet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.mirarsearch.comHost:\x0a"))))
(check-sat)
