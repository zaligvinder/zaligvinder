(declare-const X String)
; /\x2exlw([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xlw") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; jquery\-(\d|\.)*\.min\.js
(assert (str.in.re X (re.++ (str.to.re "jquery-") (re.* (re.union (re.range "0" "9") (str.to.re "."))) (str.to.re ".min.js\x0a"))))
; /\x2em4r([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.m4r") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2esum/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sum/i\x0a"))))
(check-sat)
