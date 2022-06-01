(declare-const X String)
; Reporter\s+Host\u{3A}.*search\u{2e}conduit\u{2e}comTM_SEARCH3
(assert (not (str.in_re X (re.++ (str.to_re "Reporter") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "search.conduit.comTM_SEARCH3\u{a}")))))
; /\u{2E}call\u{2E}call\s*\u{28}[^\u{29}\u{2C}]*?\u{2C}\s*\u{28}?(0x|\d)/i
(assert (str.in_re X (re.++ (str.to_re "/.call.call") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.union (str.to_re ")") (str.to_re ","))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "(")) (re.union (str.to_re "0x") (re.range "0" "9")) (str.to_re "/i\u{a}"))))
; ookflolfctm\u{2f}nmot\.fmu
(assert (not (str.in_re X (str.to_re "ookflolfctm/nmot.fmu\u{a}"))))
(check-sat)
