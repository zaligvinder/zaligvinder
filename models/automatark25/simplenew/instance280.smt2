(declare-const X String)
; \u{2F}cs\u{2F}pop4\u{2F}User-Agent\u{3A}kitwww\u{2E}borlander\u{2E}com\u{2E}cn
(assert (str.in_re X (str.to_re "/cs/pop4/User-Agent:kitwww.borlander.com.cn\u{a}")))
(check-sat)
