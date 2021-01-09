(declare-const X String)
; ^(NAME)(\s?)<?(\w*)(\s*)([0-9]*)>?$
(assert (not (str.in.re X (re.++ (str.to.re "NAME") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "<")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.range "0" "9")) (re.opt (str.to.re ">")) (str.to.re "\x0a")))))
(check-sat)
