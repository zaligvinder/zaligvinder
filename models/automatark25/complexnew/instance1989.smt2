(declare-const X String)
; /(\u{19}\u{0}|\u{0}\u{5C})\u{0}s\u{0}p\u{0}f\u{0}r\u{0}a\u{0}m\u{0}e\u{0}\.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{19}\u{0}") (str.to_re "\u{0}\u{5c}")) (str.to_re "\u{0}s\u{0}p\u{0}f\u{0}r\u{0}a\u{0}m\u{0}e\u{0}.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i\u{a}"))))
; /^Host\u{3a}[^\u{d}\u{a}]+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\u{3a}\d{1,5}\u{d}?$/mi
(assert (str.in_re X (re.++ (str.to_re "/Host:") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (str.to_re "\u{d}")) (str.to_re "/mi\u{a}"))))
(check-sat)
