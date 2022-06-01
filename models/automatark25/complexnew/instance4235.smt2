(declare-const X String)
; ^[a-z][a-z0-9\.,\-_]{5,31}$
(assert (str.in_re X (re.++ (re.range "a" "z") ((_ re.loop 5 31) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re ",") (str.to_re "-") (str.to_re "_"))) (str.to_re "\u{a}"))))
; BysooTBUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "BysooTBUser-Agent:\u{a}"))))
(check-sat)
