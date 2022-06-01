(declare-const X String)
; ppcdomain\u{2E}co\u{2E}uk.*Spy\-Locked\s+Exploiter\w+\u{2F}r\u{2F}keys\u{2F}keysS\u{3a}Users\u{5c}Iterenet
(assert (not (str.in_re X (re.++ (str.to_re "ppcdomain.co.uk") (re.* re.allchar) (str.to_re "Spy-Locked") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Exploiter") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/r/keys/keysS:Users\u{5c}Iterenet\u{a}")))))
; /\u{2e}ses([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ses") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^(1?(-?\d{3})-?)?(\d{3})(-?\d{4})$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "1")) (re.opt (str.to_re "-")) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}") (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")))))
(check-sat)
