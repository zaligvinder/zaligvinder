(declare-const X String)
; ^[2-9][0-8]\d[2-9]\d{6}$
(assert (str.in.re X (re.++ (re.range "2" "9") (re.range "0" "8") (re.range "0" "9") (re.range "2" "9") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; WinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid4\x2e8\x2e4
(assert (str.in.re X (str.to.re "WinCrashcomHost:tid=%toolbar_id4.8.4\x0a")))
(check-sat)
