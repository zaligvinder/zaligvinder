(declare-const X String)
; \u{2F}cs\u{2F}pop4\u{2F}A-Spywww\u{2E}yoogee\u{2E}com
(assert (not (str.in_re X (str.to_re "/cs/pop4/A-Spywww.yoogee.com\u{13}\u{a}"))))
; /filename=[^\n]*\u{2e}png/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".png/i\u{a}")))))
; X-Mailer\u{3a}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}User-Agent:\u{a}"))))
(check-sat)
