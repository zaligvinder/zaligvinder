(declare-const X String)
; /\.onpropertychange\s*=\s*function[^{]*?\{[^}]*?\w+\.swapNode\x28/ims
(assert (str.in.re X (re.++ (str.to.re "/.onpropertychange") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "function") (re.* (re.comp (str.to.re "{"))) (str.to.re "{") (re.* (re.comp (str.to.re "}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".swapNode(/ims\x0a"))))
; DigExt.*\x23\x23\x23\x23
(assert (not (str.in.re X (re.++ (str.to.re "DigExt") (re.* re.allchar) (str.to.re "####\x0a")))))
; /\x2ejp2([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jp2") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
