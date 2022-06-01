(declare-const X String)
; /filename=[^\n]*\u{2e}apk/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".apk/i\u{a}"))))
; ^.{4,8}$
(assert (str.in_re X (re.++ ((_ re.loop 4 8) re.allchar) (str.to_re "\u{a}"))))
(check-sat)
