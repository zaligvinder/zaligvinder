(declare-const X String)
; ^([A-Za-z]{5})([0-9]{4})([A-Za-z]{1})$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}")))))
; [\\s+,]
(assert (str.in_re X (re.++ (re.union (str.to_re "\u{5c}") (str.to_re "s") (str.to_re "+") (str.to_re ",")) (str.to_re "\u{a}"))))
; Host\u{3A}.*Hello\u{2E}.*Referer\u{3A}ToolbarCurrent\u{3B}CIA
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "Referer:ToolbarCurrent;CIA\u{a}"))))
(check-sat)
