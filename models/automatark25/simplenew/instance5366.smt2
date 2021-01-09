(declare-const X String)
; Referer\x3A.*notification.*qisezhin\x2fiqor\.ymspasServer\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Referer:") (re.* re.allchar) (str.to.re "notification\x13") (re.* re.allchar) (str.to.re "qisezhin/iqor.ym\x13spasServer:\x0a")))))
(check-sat)
