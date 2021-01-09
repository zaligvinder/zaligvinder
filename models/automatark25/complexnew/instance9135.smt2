(declare-const X String)
; [^"\r\n]*
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "\x22") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "\x0a")))))
; ^(|(0\d)|(1[0-2])):(([0-5]\d)):(([0-5]\d))\s([AP]M)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "::") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9") (re.union (str.to.re "A") (str.to.re "P")) (str.to.re "M")))))
; ^(\d{1}|\d{2}|\d{3})(\.\d{3})*?$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.* (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; Subject\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (str.to.re "Subject:as.starware.com/dp/search?x=\x0a")))
(check-sat)
