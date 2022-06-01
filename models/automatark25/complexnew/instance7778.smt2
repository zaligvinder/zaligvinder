(declare-const X String)
; ^(~?/|[a-zA-Z]:[\\/]).+
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "~")) (str.to_re "/")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":") (re.union (str.to_re "\u{5c}") (str.to_re "/")))) (re.+ re.allchar) (str.to_re "\u{a}")))))
; ^([1-9]|0[1-9]|1[0-2]):([0-5][0-9])$
(assert (not (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":\u{a}") (re.range "0" "5") (re.range "0" "9")))))
; \u{22}StarLogger\u{22}User-Agent\u{3A}JMailUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "\u{22}StarLogger\u{22}User-Agent:JMailUser-Agent:\u{a}"))))
(check-sat)
