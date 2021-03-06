(declare-const X String)
; ^(([1..9])|(0[1..9])|(1\d)|(2\d)|(3[0..1])).((\d)|(0\d)|(1[0..2])).(\d{4})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re ".") (str.to.re "9"))) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re ".") (str.to.re "1"))) (str.to.re "1") (str.to.re ".") (str.to.re "9")) re.allchar (re.union (re.range "0" "9") (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re ".") (str.to.re "2")))) re.allchar ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2eclass([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.class") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^[0-9]*[1-9]+[0-9]*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; Subject\x3A.*User-Agent\x3A.*ResultATTENTION\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "ResultATTENTION:\x0a")))))
(check-sat)
