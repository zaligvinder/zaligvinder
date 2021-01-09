(declare-const X String)
; ^"[^"]+"$
(assert (not (str.in.re X (re.++ (str.to.re "\x22") (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x22\x0a")))))
(check-sat)
