(declare-const X String)
; <h([1-6])>([^<]*)</h([1-6])>
(assert (str.in.re X (re.++ (str.to.re "<h") (re.range "1" "6") (str.to.re ">") (re.* (re.comp (str.to.re "<"))) (str.to.re "</h") (re.range "1" "6") (str.to.re ">\x0a"))))
(check-sat)
