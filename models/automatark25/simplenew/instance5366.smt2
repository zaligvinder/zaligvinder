(declare-const X String)
; Referer\u{3A}.*notification.*qisezhin\u{2f}iqor\.ymspasServer\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Referer:") (re.* re.allchar) (str.to_re "notification\u{13}") (re.* re.allchar) (str.to_re "qisezhin/iqor.ym\u{13}spasServer:\u{a}")))))
(check-sat)
