(declare-const X String)
; /filename=[^\n]*\x2easf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asf/i\x0a")))))
; Referer\x3A.*notification.*qisezhin\x2fiqor\.ymspasServer\x3a
(assert (str.in.re X (re.++ (str.to.re "Referer:") (re.* re.allchar) (str.to.re "notification\x13") (re.* re.allchar) (str.to.re "qisezhin/iqor.ym\x13spasServer:\x0a"))))
; ^[A-Z]{1}-[0-9]{7}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ehlp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hlp/i\x0a"))))
(check-sat)
