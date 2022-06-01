(declare-const X String)
; e2give\.com.*Host\u{3A}.*Host\u{3a}
(assert (str.in_re X (re.++ (str.to_re "e2give.com") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Host:\u{a}"))))
; \binterface\b.*(\bI[_]\w*\b)
(assert (str.in_re X (re.++ (str.to_re "interface") (re.* re.allchar) (str.to_re "\u{a}I_") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))
; /\u{0}hide hide\u{22}\u{9}\u{22}([a-z0-9\u{5c}\u{2e}\u{3a}]+\u{2e}exe|sh)/
(assert (not (str.in_re X (re.++ (str.to_re "/\u{0}hide hide\u{22}\u{9}\u{22}") (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "\u{5c}") (str.to_re ".") (str.to_re ":"))) (str.to_re ".exe")) (str.to_re "sh")) (str.to_re "/\u{a}")))))
; ^[F][O][\s]?[0-9]{3}$
(assert (str.in_re X (re.++ (str.to_re "FO") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^(\d){7,8}$
(assert (str.in_re X (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
