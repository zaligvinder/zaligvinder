(declare-const X String)
; (\<(.*?)\>)(.*?)(\<\/(.*?)\>)
(assert (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}<") (re.* re.allchar) (str.to_re "></") (re.* re.allchar) (str.to_re ">"))))
(check-sat)
