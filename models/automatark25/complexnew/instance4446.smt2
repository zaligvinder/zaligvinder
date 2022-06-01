(declare-const X String)
; Ts2\u{2F}User-Agent\u{3A}actualnames\.comGURLwww\u{2E}altnet\u{2E}com
(assert (str.in_re X (str.to_re "Ts2/User-Agent:actualnames.comGURLwww.altnet.com\u{1b}\u{a}")))
; Logtraffbest\u{2E}bizAdToolsLogged
(assert (not (str.in_re X (str.to_re "Logtraffbest.bizAdToolsLogged\u{a}"))))
; /filename=[^\n]*\u{2e}otf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".otf/i\u{a}"))))
(check-sat)
