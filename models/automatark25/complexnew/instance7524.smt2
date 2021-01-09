(declare-const X String)
; /\/stat_u\/$/U
(assert (str.in.re X (str.to.re "//stat_u//U\x0a")))
; \x1f\x8b\x08\x00.+\x00\x00
(assert (not (str.in.re X (re.++ (str.to.re "\x1f\x8b\x08\x00") (re.+ re.allchar) (str.to.re "\x00\x00\x0a")))))
(check-sat)
