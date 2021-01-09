(declare-const X String)
; [\x01-\x08,\x0A-\x1F,\x7F,\x81,\x8D,\x8F,\x90,\x9D]
(assert (str.in.re X (re.++ (re.union (re.range "\x01" "\x08") (str.to.re ",") (re.range "\x0a" "\x1f") (str.to.re "\x7f") (str.to.re "\x81") (str.to.re "\x8d") (str.to.re "\x8f") (str.to.re "\x90") (str.to.re "\x9d")) (str.to.re "\x0a"))))
; ^(0{0,1}[1-9]|[12][0-9]|3[01])[- /.](0{0,1}[1-9]|1[012])[- /.](\d{2}|\d{4})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a")))))
; (<b>)([^<>]+)(</b>)
(assert (not (str.in.re X (re.++ (str.to.re "<b>") (re.+ (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re "</b>\x0a")))))
(check-sat)
