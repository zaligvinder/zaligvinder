(declare-const X String)
; background-image.[^<]*?;
(assert (str.in_re X (re.++ (str.to_re "background-image") re.allchar (re.* (re.comp (str.to_re "<"))) (str.to_re ";\u{a}"))))
(check-sat)
