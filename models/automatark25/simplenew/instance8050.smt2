(declare-const X String)
; (</?\w*[^<>]*>)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a<") (re.opt (str.to.re "/")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re ">")))))
(check-sat)
