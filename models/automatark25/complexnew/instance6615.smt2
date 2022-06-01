(declare-const X String)
; e2give\.com\s+data2\.activshopper\.com
(assert (str.in_re X (re.++ (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "data2.activshopper.com\u{a}"))))
; ^[\w\.=-]+@[\w\.-]+\.[\w]{2,3}$
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re ".") (str.to_re "=") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
; /\u{2e}xslt([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.xslt") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; X-Mailer\u{3a}Referer\u{3A}sponsor2\.ucmore\.com
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}Referer:sponsor2.ucmore.com\u{a}"))))
(check-sat)
