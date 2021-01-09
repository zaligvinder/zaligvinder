(declare-const X String)
; ^((0?[1-9])|((1|2)[0-9])|30|31)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (str.to.re "30") (str.to.re "31")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ewm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wm/i\x0a")))))
; s_sq=aolsnssignin.*LOG\s+Host\x3ASubject\x3Aonline-casino-searcher\.com
(assert (not (str.in.re X (re.++ (str.to.re "s_sq=aolsnssignin") (re.* re.allchar) (str.to.re "LOG") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:online-casino-searcher.com\x0a")))))
(check-sat)
