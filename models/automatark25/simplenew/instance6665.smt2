(declare-const X String)
; com.*is[^\n\r]*Host\u{3A}\s+User-Agent\u{3A}u=serverFILE\u{2F}xml\u{2F}toolbar\u{2F}check=at\u{3a}Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "com") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:u=serverFILE/xml/toolbar/check=at:Host:\u{a}"))))
(check-sat)
