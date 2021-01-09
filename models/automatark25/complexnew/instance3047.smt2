(declare-const X String)
; www\.actualnames\.com.*www\.klikvipsearch\.com.*\x3C\x2Fchat\x3E
(assert (str.in.re X (re.++ (str.to.re "www.actualnames.com") (re.* re.allchar) (str.to.re "www.klikvipsearch.com") (re.* re.allchar) (str.to.re "</chat>\x0a"))))
; [\w!#$%&&apos;*+./=?`{|}~^-]+@[\d.A-Za-z-]+
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "!") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "&") (str.to.re "a") (str.to.re "p") (str.to.re "o") (str.to.re "s") (str.to.re ";") (str.to.re "*") (str.to.re "+") (str.to.re ".") (str.to.re "/") (str.to.re "=") (str.to.re "?") (str.to.re "`") (str.to.re "{") (str.to.re "|") (str.to.re "}") (str.to.re "~") (str.to.re "^") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (str.to.re ".") (re.range "A" "Z") (re.range "a" "z") (str.to.re "-"))) (str.to.re "\x0a"))))
; X-Mailer\x3aSpyAgentRootHost\x3A
(assert (str.in.re X (str.to.re "X-Mailer:\x13SpyAgentRootHost:\x0a")))
(check-sat)
