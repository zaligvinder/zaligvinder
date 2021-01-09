(declare-const X String)
; ^(([A-Z])([a-zA-Z0-9]+)?)(\:)(\d+)$
(assert (str.in.re X (re.++ (str.to.re ":") (re.+ (re.range "0" "9")) (str.to.re "\x0a") (re.range "A" "Z") (re.opt (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))
; iepluginBrowsedOVNHost\x3A\x2Fproducts\x2Fspyblocs\x2F
(assert (not (str.in.re X (str.to.re "iepluginBrowsedOVNHost:/products/spyblocs/\x13\x0a"))))
; (\/\/-->\s*)?<\/?SCRIPT([^>]*)>(\s*<!--\s)?
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "//-->") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "<") (re.opt (str.to.re "/")) (str.to.re "SCRIPT") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.opt (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "<!--") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a")))))
(check-sat)
