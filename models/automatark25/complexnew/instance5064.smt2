(declare-const X String)
; ^[A-Za-z]{1}[0-9]{7}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; /[^\n -~\r]{4}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (str.to.re "\x0a") (re.range " " "~") (str.to.re "\x0d"))) (str.to.re "/P\x0a")))))
; Windows\s+haveFTUser-Agent\x3ADayspassword\x3B0\x3BIncorrect
(assert (str.in.re X (re.++ (str.to.re "Windows") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "haveFTUser-Agent:Dayspassword;0;Incorrect\x0a"))))
; ^[A-Z]{3}(\s)?[0-9]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
