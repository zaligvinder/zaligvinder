(declare-const X String)
; richfind\u{2E}com\s+Host\u{3A}.*User-Agent\u{3A}throughpjpoptwql\u{2f}rlnj
(assert (not (str.in_re X (re.++ (str.to_re "richfind.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "User-Agent:throughpjpoptwql/rlnj\u{a}")))))
(check-sat)
