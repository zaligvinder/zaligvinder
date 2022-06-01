(declare-const X String)
; ^(\+[1-9][0-9]*(\([0-9]*\)|-[0-9]*-))?[0]?[1-9][0-9\- ]*$
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "+") (re.range "1" "9") (re.* (re.range "0" "9")) (re.union (re.++ (str.to_re "(") (re.* (re.range "0" "9")) (str.to_re ")")) (re.++ (str.to_re "-") (re.* (re.range "0" "9")) (str.to_re "-"))))) (re.opt (str.to_re "0")) (re.range "1" "9") (re.* (re.union (re.range "0" "9") (str.to_re "-") (str.to_re " "))) (str.to_re "\u{a}"))))
; ^(F-)?((2[A|B])|[0-9]{2})[0-9]{3}$
(assert (str.in_re X (re.++ (re.opt (str.to_re "F-")) (re.union (re.++ (str.to_re "2") (re.union (str.to_re "A") (str.to_re "|") (str.to_re "B"))) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; \u{28}robert\u{40}blackcastlesoft\u{2E}com\u{29}
(assert (not (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{a}"))))
; aohobygi\u{2f}zwiw\s+\+The\+password\+is\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "aohobygi/zwiw") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "+The+password+is:\u{a}")))))
(check-sat)
