(declare-const X String)
; /filename=[^\n]*\x2emkv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mkv/i\x0a")))))
; information\s+User-Agent\x3AMM_RECO\x2EEXE
(assert (str.in.re X (re.++ (str.to.re "information") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:MM_RECO.EXE\x0a"))))
; Host\x3A.*Basic.*ProtoUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Basic") (re.* re.allchar) (str.to.re "ProtoUser-Agent:\x0a"))))
(check-sat)
