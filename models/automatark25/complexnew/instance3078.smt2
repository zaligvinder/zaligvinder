(declare-const X String)
; Test\d+DesktopAddressIDENTIFY666User-Agent\u{3A}\u{5B}Static
(assert (not (str.in_re X (re.++ (str.to_re "Test") (re.+ (re.range "0" "9")) (str.to_re "DesktopAddressIDENTIFY666User-Agent:[Static\u{a}")))))
; xbqyosoe\u{2f}cpvmdll\u{3F}
(assert (not (str.in_re X (str.to_re "xbqyosoe/cpvmdll?\u{a}"))))
; /\u{2E}call\u{2E}call\s*\u{28}[^\u{29}\u{2C}]*?\u{2C}\s*\u{28}?(0x|\d)/i
(assert (str.in_re X (re.++ (str.to_re "/.call.call") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.union (str.to_re ")") (str.to_re ","))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "(")) (re.union (str.to_re "0x") (re.range "0" "9")) (str.to_re "/i\u{a}"))))
; ^([A-Z]{0,3}?[0-9]{9}($[0-9]{0}|[A-Z]{1}))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 0 3) (re.range "A" "Z")) ((_ re.loop 9 9) (re.range "0" "9")) (re.union ((_ re.loop 0 0) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")))))))
(check-sat)
