(declare-const X String)
; ^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.+ (re.++ (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a"))))
; shprrprt-cs-Pre\x2Fta\x2FNEWS\x2F
(assert (str.in.re X (str.to.re "shprrprt-cs-\x13Pre/ta/NEWS/\x0a")))
; WinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid4\x2e8\x2e4
(assert (not (str.in.re X (str.to.re "WinCrashcomHost:tid=%toolbar_id4.8.4\x0a"))))
(check-sat)
