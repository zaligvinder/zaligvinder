(declare-const X String)
; ^(\{|\[|\().+(\}|\]|\)).+$
(assert (str.in_re X (re.++ (re.union (str.to_re "{") (str.to_re "[") (str.to_re "(")) (re.+ re.allchar) (re.union (str.to_re "}") (str.to_re "]") (str.to_re ")")) (re.+ re.allchar) (str.to_re "\u{a}"))))
; si=\s+ProAgent\s+Subject\u{3A}as\u{2E}starware\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "si=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ProAgent") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:as.starware.com\u{a}")))))
(check-sat)
