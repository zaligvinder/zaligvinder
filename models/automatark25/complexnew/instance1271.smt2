(declare-const X String)
; YWRtaW46YWRtaW4www\x2Ee-finder\x2EccNSIS_DOWNLOADHost\x3A
(assert (str.in.re X (str.to.re "YWRtaW46YWRtaW4www.e-finder.ccNSIS_DOWNLOADHost:\x0a")))
; ref\x3D\x25user\x5Fid\d+\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in.re X (re.++ (str.to.re "ref=%user_id") (re.+ (re.range "0" "9")) (str.to.re "/bar_pl/chk.fcgi\x0a"))))
; /Libs\/Starter(CmdExec|NetUtils|Rec|ScreenShots|Settings)\.py/
(assert (str.in.re X (re.++ (str.to.re "/Libs/Starter") (re.union (str.to.re "CmdExec") (str.to.re "NetUtils") (str.to.re "Rec") (str.to.re "ScreenShots") (str.to.re "Settings")) (str.to.re ".py/\x0a"))))
(check-sat)
