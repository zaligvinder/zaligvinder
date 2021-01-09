(declare-const X String)
; /\x2esmil([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.smil") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^([\s\S]){1,20}([\s\.])
(assert (str.in.re X (re.++ ((_ re.loop 1 20) (re.union (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a"))))
; CUSTOM\swww\x2Elocators\x2Ecom\d+Seconds\-
(assert (str.in.re X (re.++ (str.to.re "CUSTOM") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.locators.com") (re.+ (re.range "0" "9")) (str.to.re "Seconds-\x0a"))))
; User-Agent\x3A\x2Ftba\x2FFrom\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:/tba/From:\x0a"))))
; /\/flash201(3|4)\.php$/U
(assert (str.in.re X (re.++ (str.to.re "//flash201") (re.union (str.to.re "3") (str.to.re "4")) (str.to.re ".php/U\x0a"))))
(check-sat)
