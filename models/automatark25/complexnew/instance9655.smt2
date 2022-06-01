(declare-const X String)
; /^.{27}/sR
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 27 27) re.allchar) (str.to_re "/sR\u{a}")))))
; this\s+MyBrowser\d+Redirector\u{22}ServerHost\u{3A}X-Mailer\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "this") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "MyBrowser") (re.+ (re.range "0" "9")) (str.to_re "Redirector\u{22}ServerHost:X-Mailer:\u{13}\u{a}")))))
; Referer\u{3A}.*notification.*qisezhin\u{2f}iqor\.ymspasServer\u{3a}
(assert (str.in_re X (re.++ (str.to_re "Referer:") (re.* re.allchar) (str.to_re "notification\u{13}") (re.* re.allchar) (str.to_re "qisezhin/iqor.ym\u{13}spasServer:\u{a}"))))
; Host\u{3A}Host\u{3A}X-Mailer\u{3a}
(assert (str.in_re X (str.to_re "Host:Host:X-Mailer:\u{13}\u{a}")))
; /filename=[^\n]*\u{2e}exe/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".exe/i\u{a}")))))
(check-sat)
