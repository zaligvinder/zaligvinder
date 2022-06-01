(declare-const X String)
; \<img ((src|height|width|border)=:q:Wh*)*/\>
(assert (str.in_re X (re.++ (str.to_re "<img ") (re.* (re.++ (re.union (str.to_re "src") (str.to_re "height") (str.to_re "width") (str.to_re "border")) (str.to_re "=:q:W") (re.* (str.to_re "h")))) (str.to_re "/>\u{a}"))))
(check-sat)
