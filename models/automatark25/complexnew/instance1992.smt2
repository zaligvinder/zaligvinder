(declare-const X String)
; products\s+Host\x3ADAPCURLBlaze
(assert (str.in.re X (re.++ (str.to.re "products") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:DAPCURLBlaze\x0a"))))
; ^[AaWaKkNn][a-zA-Z]?[0-9][a-zA-Z]{1,3}$
(assert (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "a") (str.to.re "W") (str.to.re "K") (str.to.re "k") (str.to.re "N") (str.to.re "n")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.range "0" "9") ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2easx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asx/i\x0a"))))
(check-sat)
