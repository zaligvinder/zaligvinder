(declare-const X String)
; [\(]{1,}[^)]*[)]{1,}
(assert (not (str.in.re X (re.++ (re.+ (str.to.re "(")) (re.* (re.comp (str.to.re ")"))) (re.+ (str.to.re ")")) (str.to.re "\x0a")))))
(check-sat)
