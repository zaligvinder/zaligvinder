(declare-const X String)
; ^/{1}(((/{1}\.{1})?[a-zA-Z0-9 ]+/?)+(\.{1}[a-zA-Z0-9]{2,4})?)$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (str.to_re "/")) (str.to_re "\u{a}") (re.+ (re.++ (re.opt (re.++ ((_ re.loop 1 1) (str.to_re "/")) ((_ re.loop 1 1) (str.to_re ".")))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " "))) (re.opt (str.to_re "/")))) (re.opt (re.++ ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))))
; /\/[a-zA-Z_-]+\.ee$/U
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "-"))) (str.to_re ".ee/U\u{a}"))))
; \u{2A}PORT2\u{2A}cdpnode=Host\u{3A}
(assert (not (str.in_re X (str.to_re "*PORT2*cdpnode=Host:\u{a}"))))
; Theef2offers\u{2E}bullseye-network\u{2E}com
(assert (str.in_re X (str.to_re "Theef2offers.bullseye-network.com\u{a}")))
; /[^\u{d}\u{a}\u{9}\u{20}-\u{7e}]{4}/P
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "\u{9}") (re.range " " "~"))) (str.to_re "/P\u{a}")))))
(check-sat)
