(declare-const X String)
; /(\u{17}\u{0}|\u{0}\u{5C})\u{0}w\u{0}u\u{0}a\u{0}e\u{0}x\u{0}t\u{0}\.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{17}\u{0}") (str.to_re "\u{0}\u{5c}")) (str.to_re "\u{0}w\u{0}u\u{0}a\u{0}e\u{0}x\u{0}t\u{0}.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i\u{a}")))))
; /filename=[^\n]*\u{2e}maplet/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".maplet/i\u{a}")))))
(check-sat)
