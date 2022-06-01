(declare-const X String)
; (""|[^"])*
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "\u{22}\u{22}") (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{a}"))))
; /(\u{19}\u{0}|\u{0}\u{5C})\u{0}s\u{0}p\u{0}f\u{0}r\u{0}a\u{0}m\u{0}e\u{0}\.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{19}\u{0}") (str.to_re "\u{0}\u{5c}")) (str.to_re "\u{0}s\u{0}p\u{0}f\u{0}r\u{0}a\u{0}m\u{0}e\u{0}.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i\u{a}"))))
(check-sat)
