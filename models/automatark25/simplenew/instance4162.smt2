(declare-const X String)
; Logtraffbest\u{2E}bizAdToolsLogged
(assert (str.in_re X (str.to_re "Logtraffbest.bizAdToolsLogged\u{a}")))
(check-sat)
