(declare-const X String)
; .*[Pp]re[Ss\$]cr[iI1]pt.*
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "P") (str.to.re "p")) (str.to.re "re") (re.union (str.to.re "S") (str.to.re "s") (str.to.re "$")) (str.to.re "cr") (re.union (str.to.re "i") (str.to.re "I") (str.to.re "1")) (str.to.re "pt") (re.* re.allchar) (str.to.re "\x0a"))))
; ^\s*[a-zA-Z0-9,\s\-\'\.]+\s*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ",") (str.to.re "-") (str.to.re "'") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
