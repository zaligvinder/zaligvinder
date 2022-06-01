(declare-const X String)
; <\/?(tag1|tag2)[^>]*\/?>
(assert (str.in_re X (re.++ (str.to_re "<") (re.opt (str.to_re "/")) (re.* (re.comp (str.to_re ">"))) (re.opt (str.to_re "/")) (str.to_re ">\u{a}tag") (re.union (str.to_re "1") (str.to_re "2")))))
(check-sat)
