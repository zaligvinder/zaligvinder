(declare-const X String)
; ^([1-9]|0[1-9]|1[0-2]):([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9"))))
; ^([0-1][0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])([Z]|\.[0-9]{4}|[-|\+]([0-1][0-9]|2[0-3]):([0-5][0-9]))?$
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::") (re.opt (re.union (str.to.re "Z") (re.++ (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to.re "-") (str.to.re "|") (str.to.re "+")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9")))) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
; ^(01)[0-9]{8}
(assert (str.in.re X (re.++ (str.to.re "01") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3A\ssource%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "source%3Dultrasearch136%26campaign%3Dsnap\x0a")))))
(check-sat)
