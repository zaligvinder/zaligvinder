(declare-const X String)
; (\bprotected\b.*(public))|(\bprivate\b.*(protected))|(\bprivate\b.*(public))
(assert (not (str.in.re X (re.union (re.++ (str.to.re "protected") (re.* re.allchar) (str.to.re "public")) (re.++ (str.to.re "private") (re.* re.allchar) (str.to.re "protected")) (re.++ (str.to.re "\x0aprivate") (re.* re.allchar) (str.to.re "public"))))))
(check-sat)
