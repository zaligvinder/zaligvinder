(declare-const X String)
; \u{22}The\s+e2give\.com\s+NETObserve
(assert (str.in_re X (re.++ (str.to_re "\u{22}The") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "NETObserve\u{a}"))))
; /\u{2f}(css|upload)\u{2f}[a-z]{2}[0-9]{3}\u{2e}ccs/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.union (str.to_re "css") (str.to_re "upload")) (str.to_re "/") ((_ re.loop 2 2) (re.range "a" "z")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".ccs/U\u{a}")))))
(check-sat)
