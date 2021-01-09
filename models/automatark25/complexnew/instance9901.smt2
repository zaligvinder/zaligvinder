(declare-const X String)
; PORT\x3D\s+User-Agent\x3A\s+ProAgentUI2Host\x3A00000www\x2Ezhongsou\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "PORT=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ProAgentUI2Host:00000www.zhongsou.com\x0a"))))
; /filename=[^\n]*\x2eplf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".plf/i\x0a")))))
; www\x2Epurityscan\x2Ecom.*
(assert (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.* re.allchar) (str.to.re "\x0a"))))
; Host\x3A\s+\x2APORT3\x2A\[DRIVEwww\.raxsearch\.comSubject\x3aHost\x3a
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*[DRIVEwww.raxsearch.comSubject:Host:\x0a"))))
(check-sat)
