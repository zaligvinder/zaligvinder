(declare-const X String)
; /filename=[^\n]*\x2em4a/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4a/i\x0a")))))
; ^5[1-5][0-9]{14}$
(assert (not (str.in.re X (re.++ (str.to.re "5") (re.range "1" "5") ((_ re.loop 14 14) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^http://\\.?video\\.google+\\.\\w{2,3}/videoplay\\?docid=[\\w-]{19}
(assert (not (str.in.re X (re.++ (str.to.re "http://\x5c") (re.opt re.allchar) (str.to.re "video\x5c") re.allchar (str.to.re "googl") (re.+ (str.to.re "e")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 2 3) (str.to.re "w")) (str.to.re "/videoplay") (re.opt (str.to.re "\x5c")) (str.to.re "docid=") ((_ re.loop 19 19) (re.union (str.to.re "\x5c") (str.to.re "w") (str.to.re "-"))) (str.to.re "\x0a")))))
(check-sat)
