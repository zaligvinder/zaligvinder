(declare-const X String)
; /[0-9a-fA-F]{8}[a-z]{6}.php/
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) ((_ re.loop 6 6) (re.range "a" "z")) re.allchar (str.to.re "php/\x0a"))))
; /\x2Ermf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rmf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; (\_\_)(.+)(\_\_)
(assert (not (str.in.re X (re.++ (str.to.re "__") (re.+ re.allchar) (str.to.re "__\x0a")))))
; Host\x3A.*www\x2e2-seek\x2ecom\x2fsearch
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "www.2-seek.com/search\x0a")))))
(check-sat)
