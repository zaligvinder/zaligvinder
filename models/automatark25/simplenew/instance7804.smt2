(declare-const X String)
; (CREATE|ALTER) +(PROCEDURE|PROC|FUNCTION|VIEW) *(\[(.*)\]|(.*))
(assert (not (str.in_re X (re.++ (re.union (str.to_re "CREATE") (str.to_re "ALTER")) (re.+ (str.to_re " ")) (re.union (str.to_re "PROCEDURE") (str.to_re "PROC") (str.to_re "FUNCTION") (str.to_re "VIEW")) (re.* (str.to_re " ")) (re.union (re.++ (str.to_re "[") (re.* re.allchar) (str.to_re "]")) (re.* re.allchar)) (str.to_re "\u{a}")))))
(check-sat)
