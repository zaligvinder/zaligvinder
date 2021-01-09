(declare-const X String)
; ^(\+[1-9][0-9]*(\([0-9]*\)|-[0-9]*-))?[0]?[1-9][0-9\- ]*$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "+") (re.range "1" "9") (re.* (re.range "0" "9")) (re.union (re.++ (str.to.re "(") (re.* (re.range "0" "9")) (str.to.re ")")) (re.++ (str.to.re "-") (re.* (re.range "0" "9")) (str.to.re "-"))))) (re.opt (str.to.re "0")) (re.range "1" "9") (re.* (re.union (re.range "0" "9") (str.to.re "-") (str.to.re " "))) (str.to.re "\x0a"))))
; ^(F-)?((2[A|B])|[0-9]{2})[0-9]{3}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "F-")) (re.union (re.++ (str.to.re "2") (re.union (str.to.re "A") (str.to.re "|") (str.to.re "B"))) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a"))))
; aohobygi\x2fzwiw\s+\+The\+password\+is\x3A
(assert (not (str.in.re X (re.++ (str.to.re "aohobygi/zwiw") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "+The+password+is:\x0a")))))
(check-sat)
