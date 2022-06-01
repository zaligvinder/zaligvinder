(declare-const X String)
; ^([30|36|38]{2})([0-9]{12})$
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.union (str.to_re "3") (str.to_re "0") (str.to_re "|") (str.to_re "6") (str.to_re "8"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re "\u{a}"))))
; Logtraffbest\u{2E}bizAdToolsLogged
(assert (not (str.in_re X (str.to_re "Logtraffbest.bizAdToolsLogged\u{a}"))))
(check-sat)
