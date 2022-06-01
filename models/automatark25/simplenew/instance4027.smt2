(declare-const X String)
; (<input )(.*?)(>)
(assert (str.in_re X (re.++ (str.to_re "<input ") (re.* re.allchar) (str.to_re ">\u{a}"))))
(check-sat)
