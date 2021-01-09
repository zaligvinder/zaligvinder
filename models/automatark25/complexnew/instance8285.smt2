(declare-const X String)
; ^[a-zA-Z]{4}[a-zA-Z]{2}[a-zA-Z0-9]{2}[XXX0-9]{0,3}
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 0 3) (re.union (str.to.re "X") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /z\d{1,3}/Pi
(assert (str.in.re X (re.++ (str.to.re "/z") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/Pi\x0a"))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a"))))
; EFError.*\x2Fcs\x2Fpop4\x2F[^\n\r]*
(assert (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "/cs/pop4/") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ^((\+44\s?\d{4}|\(?\d{5}\)?)\s?\d{6})|((\+44\s?|0)7\d{3}\s?\d{6})$
(assert (not (str.in.re X (re.union (re.++ (re.union (re.++ (str.to.re "+44") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "(")) ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (str.to.re ")")))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "+44") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "0")) (str.to.re "7") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 6 6) (re.range "0" "9")))))))
(check-sat)
