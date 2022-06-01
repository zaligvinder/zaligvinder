(declare-const X String)
; Ts2\u{2F}User-Agent\u{3A}actualnames\.comGURLwww\u{2E}altnet\u{2E}com
(assert (not (str.in_re X (str.to_re "Ts2/User-Agent:actualnames.comGURLwww.altnet.com\u{1b}\u{a}"))))
(check-sat)
