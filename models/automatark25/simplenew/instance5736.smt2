(declare-const X String)
; ^([^\.]+).([^\.]+).([^\.]+).([^\.]+)$
(assert (str.in.re X (re.++ (re.+ (re.comp (str.to.re "."))) re.allchar (re.+ (re.comp (str.to.re "."))) re.allchar (re.+ (re.comp (str.to.re "."))) re.allchar (re.+ (re.comp (str.to.re "."))) (str.to.re "\x0a"))))
(check-sat)
