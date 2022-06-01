(declare-const X String)
; IDENTIFY.*\/cgi-bin\/PopupV.*Host\u{3A}searchreslt
(assert (str.in_re X (re.++ (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "/cgi-bin/PopupV") (re.* re.allchar) (str.to_re "Host:searchreslt\u{a}"))))
; ^([a-zA-Z0-9-\,\s]{2,64})$
(assert (not (str.in_re X (re.++ ((_ re.loop 2 64) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ",") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)
