(declare-const X String)
; ^(\S+\.{1})(\S+\.{1})*([^\s\.]+\s*)$
(assert (str.in_re X (re.++ (re.* (re.++ (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) ((_ re.loop 1 1) (str.to_re ".")))) (str.to_re "\u{a}") (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) ((_ re.loop 1 1) (str.to_re ".")) (re.+ (re.union (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))
; libManager\u{2E}dll\u{5E}get
(assert (str.in_re X (str.to_re "libManager.dll^get\u{a}")))
; \u{3C}chat\u{3E}Host\u{3A}tid\u{3D}\u{7B}
(assert (str.in_re X (str.to_re "<chat>\u{1b}Host:tid={\u{a}")))
(check-sat)
