(declare-const X String)
; WinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid4\x2e8\x2e4
(assert (not (str.in.re X (str.to.re "WinCrashcomHost:tid=%toolbar_id4.8.4\x0a"))))
; Subject\x3a\d+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "zmnjgmomgbdz/zzmw.gzt\x0a"))))
(check-sat)
