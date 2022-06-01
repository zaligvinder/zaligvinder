(declare-const X String)
; User-Agent\u{3A}\s+GETwww\u{2E}oemji\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "GETwww.oemji.com\u{a}"))))
(check-sat)
