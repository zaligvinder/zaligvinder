(declare-const X String)
; <body[\d\sa-z\W\S\s]*>
(assert (not (str.in.re X (re.++ (str.to.re "<body") (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">\x0a")))))
(check-sat)
