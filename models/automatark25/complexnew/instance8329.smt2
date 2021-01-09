(declare-const X String)
; /filename=[^\n]*\x2epsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".psd/i\x0a"))))
; asdbiz\x2Ebiz\s+HWAEUser-Agent\x3ATheef2
(assert (str.in.re X (re.++ (str.to.re "asdbiz.biz") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAEUser-Agent:Theef2\x0a"))))
; ^\d+(\.\d+)?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; dist\x2Eatlas\x2Dia\x2EcomSpy\-LockedOnlineconnection
(assert (not (str.in.re X (str.to.re "dist.atlas-ia.comSpy-LockedOnlineconnection\x0a"))))
(check-sat)
