(declare-const X String)
; Spy\-Locked\s+ExploiterSchwindler\x2Fr\x2Fkeys\x2Fkeys
(assert (str.in.re X (re.++ (str.to.re "Spy-Locked") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ExploiterSchwindler/r/keys/keys\x0a"))))
; /filename=[^\n]*\x2ebak/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bak/i\x0a"))))
; YWRtaW46cGFzc3dvcmQ\s+www\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "YWRtaW46cGFzc3dvcmQ") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.alfacleaner.com\x0a"))))
; 3[47]\d{13}
(assert (str.in.re X (re.++ (str.to.re "3") (re.union (str.to.re "4") (str.to.re "7")) ((_ re.loop 13 13) (re.range "0" "9")) (str.to.re "\x0a"))))
; User-Agent\x3Aetbuviaebe\x2feqv\.bvv
(assert (not (str.in.re X (str.to.re "User-Agent:etbuviaebe/eqv.bvv\x0a"))))
(check-sat)
