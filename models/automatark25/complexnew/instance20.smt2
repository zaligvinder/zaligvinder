(declare-const X String)
; s_sq=aolsnssignin.*LOG\s+Host\x3ASubject\x3Aonline-casino-searcher\.com
(assert (not (str.in.re X (re.++ (str.to.re "s_sq=aolsnssignin") (re.* re.allchar) (str.to.re "LOG") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:online-casino-searcher.com\x0a")))))
; ^\d{0,2}(\.\d{1,4})? *%?$
(assert (str.in.re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))
; ^([0-9][,]?)*([0-9][0-9])$
(assert (str.in.re X (re.++ (re.* (re.++ (re.range "0" "9") (re.opt (str.to.re ",")))) (str.to.re "\x0a") (re.range "0" "9") (re.range "0" "9"))))
; /filename=[^\n]*\x2ewax/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wax/i\x0a"))))
(check-sat)
