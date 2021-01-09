(declare-const X String)
; Yeah\!Host\x3AEnTrYwww\x2EZSearchResults\x2Ecom
(assert (not (str.in.re X (str.to.re "Yeah!Host:EnTrYwww.ZSearchResults.com\x13\x0a"))))
; /filename=[^\n]*\x2eotf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".otf/i\x0a"))))
; [^a-zA-Z0-9]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /#([1-9]){2}([1-9]){2}([1-9]){2}/
(assert (str.in.re X (re.++ (str.to.re "/#") ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "/\x0a"))))
; ^0*(\d{1,3}(\.?\d{3})*)\-?([\dkK])$
(assert (str.in.re X (re.++ (re.* (str.to.re "0")) (re.opt (str.to.re "-")) (re.union (re.range "0" "9") (str.to.re "k") (str.to.re "K")) (str.to.re "\x0a") ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to.re ".")) ((_ re.loop 3 3) (re.range "0" "9")))))))
(check-sat)
