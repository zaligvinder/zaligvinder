(declare-const X String)
; M\x2Ezip.*w3who.*\x2Fcgi\x2Flogurl\.cgiMyPostdll\x3FHOST\x3A
(assert (str.in.re X (re.++ (str.to.re "M.zip") (re.* re.allchar) (str.to.re "w3who") (re.* re.allchar) (str.to.re "/cgi/logurl.cgiMyPostdll?HOST:\x0a"))))
; HXDownload\s+Host\x3AArcadeHourspjpoptwql\x2frlnjFrom\x3A
(assert (str.in.re X (re.++ (str.to.re "HXDownload") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:ArcadeHourspjpoptwql/rlnjFrom:\x0a"))))
; Host\x3AAddressDaemonUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in.re X (str.to.re "Host:AddressDaemonUser-Agent:User-Agent:\x0a"))))
; /^[a-z\d\x2b\x2f\x3d]{48,256}$/iP
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 48 256) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/") (str.to.re "="))) (str.to.re "/iP\x0a"))))
; Referer\x3aHost\x3aport\x3aactivity
(assert (not (str.in.re X (str.to.re "Referer:Host:port:activity\x0a"))))
(check-sat)
