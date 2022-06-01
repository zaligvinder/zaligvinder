(declare-const X String)
; (.*\.([wW][mM][aA])|([mM][pP][3])$)
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.* re.allchar) (str.to_re ".") (re.union (str.to_re "w") (str.to_re "W")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "a") (str.to_re "A"))) (re.++ (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "p") (str.to_re "P")) (str.to_re "3"))) (str.to_re "\u{a}")))))
(check-sat)
