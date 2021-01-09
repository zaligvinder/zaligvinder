(declare-const X String)
; toetbuviaebe\x2feqv\.bvvuplink\x2Eco\x2Ekrwv=Host\x3A
(assert (str.in.re X (str.to.re "toetbuviaebe/eqv.bvvuplink.co.krwv=Host:\x0a")))
; Ready\s+Eye.*http\x3A\x2F\x2Fsupremetoolbar
(assert (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Eye") (re.* re.allchar) (str.to.re "http://supremetoolbar\x0a"))))
; /filename=[^\n]*\x2emet/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".met/i\x0a")))))
(check-sat)
