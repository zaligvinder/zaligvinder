(declare-const X String)
; actualnames\.com\s+fast-look\u{2E}comwww\u{2E}maxifiles\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "actualnames.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "fast-look.comwww.maxifiles.com\u{a}")))))
(check-sat)
