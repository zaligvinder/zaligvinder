(declare-const X String)
; ICON="[^"]+"
(assert (not (str.in.re X (re.++ (str.to.re "ICON=\x22") (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x22\x0a")))))
(check-sat)
