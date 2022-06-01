(declare-const X String)
; (\[b\])([^\[\]]+)(\[/b\])
(assert (str.in_re X (re.++ (str.to_re "[b]") (re.+ (re.union (str.to_re "[") (str.to_re "]"))) (str.to_re "[/b]\u{a}"))))
(check-sat)
