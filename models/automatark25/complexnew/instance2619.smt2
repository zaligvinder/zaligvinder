(declare-const X String)
; /(\u{19}\u{0}|\u{0}\u{5C})\u{0}s\u{0}p\u{0}f\u{0}r\u{0}a\u{0}m\u{0}e\u{0}\.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{19}\u{0}") (str.to_re "\u{0}\u{5c}")) (str.to_re "\u{0}s\u{0}p\u{0}f\u{0}r\u{0}a\u{0}m\u{0}e\u{0}.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i\u{a}")))))
; ^[1-9][0-9]{0,2}$
(assert (not (str.in_re X (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /\u{2e}csd([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.csd") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; (^[0]{1}$|^[-]?[1-9]{1}\d*$)
(assert (str.in_re X (re.++ (re.union ((_ re.loop 1 1) (str.to_re "0")) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
