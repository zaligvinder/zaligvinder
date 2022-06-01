(declare-const X String)
; /\?new\=.*?\:.*?\&v\=\d\.\d\.\d\&av\=/U
(assert (str.in_re X (re.++ (str.to_re "/?new=") (re.* re.allchar) (str.to_re ":") (re.* re.allchar) (str.to_re "&v=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re "&av=/U\u{a}"))))
; kwd\s+User-Agent\u{3A}register\.aspUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "kwd") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:register.aspUser-Agent:\u{a}"))))
(check-sat)
