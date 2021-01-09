(declare-const X String)
; ^(#){1}([a-fA-F0-9]){6}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "#")) ((_ re.loop 6 6) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^http://\\.?video\\.google+\\.\\w{2,3}/videoplay\\?docid=[\\w-]{19}
(assert (not (str.in.re X (re.++ (str.to.re "http://\x5c") (re.opt re.allchar) (str.to.re "video\x5c") re.allchar (str.to.re "googl") (re.+ (str.to.re "e")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 2 3) (str.to.re "w")) (str.to.re "/videoplay") (re.opt (str.to.re "\x5c")) (str.to.re "docid=") ((_ re.loop 19 19) (re.union (str.to.re "\x5c") (str.to.re "w") (str.to.re "-"))) (str.to.re "\x0a")))))
; \w*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
