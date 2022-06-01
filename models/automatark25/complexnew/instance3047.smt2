(declare-const X String)
; www\.actualnames\.com.*www\.klikvipsearch\.com.*\u{3C}\u{2F}chat\u{3E}
(assert (str.in_re X (re.++ (str.to_re "www.actualnames.com") (re.* re.allchar) (str.to_re "www.klikvipsearch.com") (re.* re.allchar) (str.to_re "</chat>\u{a}"))))
; [\w!#$%&&apos;*+./=?`{|}~^-]+@[\d.A-Za-z-]+
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "!") (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "&") (str.to_re "a") (str.to_re "p") (str.to_re "o") (str.to_re "s") (str.to_re ";") (str.to_re "*") (str.to_re "+") (str.to_re ".") (str.to_re "/") (str.to_re "=") (str.to_re "?") (str.to_re "`") (str.to_re "{") (str.to_re "|") (str.to_re "}") (str.to_re "~") (str.to_re "^") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.union (re.range "0" "9") (str.to_re ".") (re.range "A" "Z") (re.range "a" "z") (str.to_re "-"))) (str.to_re "\u{a}"))))
; X-Mailer\u{3a}SpyAgentRootHost\u{3A}
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}SpyAgentRootHost:\u{a}")))
(check-sat)
