(declare-const X String)
; <h([1-6])>([^<]*)</h([1-6])>
(assert (str.in_re X (re.++ (str.to_re "<h") (re.range "1" "6") (str.to_re ">") (re.* (re.comp (str.to_re "<"))) (str.to_re "</h") (re.range "1" "6") (str.to_re ">\u{a}"))))
(check-sat)
