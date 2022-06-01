(declare-const X String)
; \u{2F}bonzibuddy\u{2F}origin\u{3D}sidefindApofisUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "/bonzibuddy/origin=sidefindApofisUser-Agent:\u{a}"))))
; BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches\u{2E}worldtostart\u{2E}com
(assert (str.in_re X (str.to_re "BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches.worldtostart.com\u{a}")))
; OS\u{2F}\d+User-Agent\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "OS/") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:User-Agent:\u{a}")))))
(check-sat)
