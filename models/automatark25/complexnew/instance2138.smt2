(declare-const X String)
; \.([A-Za-z0-9]{2,5}($|\b\?))
(assert (not (str.in.re X (re.++ (str.to.re ".\x0a") ((_ re.loop 2 5) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "?")))))
; WinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid4\x2e8\x2e4
(assert (str.in.re X (str.to.re "WinCrashcomHost:tid=%toolbar_id4.8.4\x0a")))
(check-sat)
