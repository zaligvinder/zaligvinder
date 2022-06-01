(declare-const X String)
; Admin\s+daosearch\u{2E}comMyPostwww\.raxsearch\.comref\u{3D}\u{25}user\u{5F}id
(assert (str.in_re X (re.++ (str.to_re "Admin") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "daosearch.comMyPostwww.raxsearch.comref=%user_id\u{a}"))))
(check-sat)
