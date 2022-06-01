(declare-const X String)
; Anal\s+news.*User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Anal") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "news") (re.* re.allchar) (str.to_re "User-Agent:\u{a}")))))
; ^(a-z|A-Z|0-9)*[^#$%^&*()']*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "a-z") (str.to_re "A-Z") (str.to_re "0-9"))) (re.* (re.union (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "^") (str.to_re "&") (str.to_re "*") (str.to_re "(") (str.to_re ")") (str.to_re "'"))) (str.to_re "\u{a}"))))
; loomcompany\u{2E}comBasedURLS\swww\.fast-finder\.com
(assert (not (str.in_re X (re.++ (str.to_re "loomcompany.comBasedURLS") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.com\u{a}")))))
; from\s+\u{2F}dss\u{2F}cc\.2_0_0\.[^\n\r]*uploadServer
(assert (not (str.in_re X (re.++ (str.to_re "from") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/dss/cc.2_0_0.") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "uploadServer\u{a}")))))
(check-sat)
