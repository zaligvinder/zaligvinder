(declare-const X String)
; <([^<>\s]*)(\s[^<>]*)?>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re "<") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* (re.union (str.to.re "<") (str.to.re ">"))))) (str.to.re ">\x0a"))))
; ^(Function|Sub)(\s+[\w]+)\([^\(\)]*\)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "Function") (str.to.re "Sub")) (str.to.re "(") (re.* (re.union (str.to.re "(") (str.to.re ")"))) (str.to.re ")\x0a") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
(check-sat)
