(declare-const X String)
; /filename=[^\n]*\x2epfm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfm/i\x0a"))))
; encoder[^\n\r]*\.cfg\s+Host\x3AWeHost\x3a
(assert (str.in.re X (re.++ (str.to.re "encoder") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re ".cfg") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:WeHost:\x0a"))))
(check-sat)
