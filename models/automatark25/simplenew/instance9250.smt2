(declare-const X String)
; [^a-zA-Z \-]|(  )|(\-\-)|(^\s*$)
(assert (str.in.re X (re.union (str.to.re "  ") (str.to.re "--") (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")) (re.range "a" "z") (re.range "A" "Z") (str.to.re " ") (str.to.re "-"))))
(check-sat)
