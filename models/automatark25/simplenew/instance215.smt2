(declare-const X String)
; Hello\u{2E}\s+ovpl\s+Host\u{3A}WeHost\u{3a}www\u{2E}wowokay\u{2E}com/wowokaybar\u{2E}php
(assert (str.in_re X (re.++ (str.to_re "Hello.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ovpl") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:WeHost:www.wowokay.com/wowokaybar.php\u{a}"))))
(check-sat)
