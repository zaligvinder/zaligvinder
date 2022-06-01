(declare-const X String)
; /\u{2e}rat([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.rat") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^(([a-zA-Z]{3})?([0-9]{4}))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 4 4) (re.range "0" "9"))))))
; ^[^<>`~!/@\#},.?"-$%:;)(_ ^{&*=|'+]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re "<") (str.to_re ">") (str.to_re "`") (str.to_re "~") (str.to_re "!") (str.to_re "/") (str.to_re "@") (str.to_re "#") (str.to_re "}") (str.to_re ",") (str.to_re ".") (str.to_re "?") (re.range "\u{22}" "$") (str.to_re "%") (str.to_re ":") (str.to_re ";") (str.to_re ")") (str.to_re "(") (str.to_re "_") (str.to_re " ") (str.to_re "^") (str.to_re "{") (str.to_re "&") (str.to_re "*") (str.to_re "=") (str.to_re "|") (str.to_re "'") (str.to_re "+"))) (str.to_re "\u{a}")))))
; from\s+\u{2F}dss\u{2F}cc\.2_0_0\.[^\n\r]*uploadServer
(assert (not (str.in_re X (re.++ (str.to_re "from") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/dss/cc.2_0_0.") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "uploadServer\u{a}")))))
(check-sat)
