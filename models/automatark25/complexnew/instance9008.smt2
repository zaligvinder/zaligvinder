(declare-const X String)
; CUSTOM\swww\x2Elocators\x2Ecom\d+Seconds\-
(assert (not (str.in.re X (re.++ (str.to.re "CUSTOM") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.locators.com") (re.+ (re.range "0" "9")) (str.to.re "Seconds-\x0a")))))
; /\x2Ermf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rmf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2enab/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".nab/i\x0a"))))
(check-sat)
