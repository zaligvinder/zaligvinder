(declare-const X String)
; WinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid4\x2e8\x2e4
(assert (str.in.re X (str.to.re "WinCrashcomHost:tid=%toolbar_id4.8.4\x0a")))
(check-sat)
