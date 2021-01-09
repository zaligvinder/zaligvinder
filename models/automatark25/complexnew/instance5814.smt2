(declare-const X String)
; Host\x3A\s+www\x2Eyoogee\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.yoogee.com\x13\x0a")))))
; \x5Chome\/lordofsearchToolbar\x22StarLogger\x22
(assert (str.in.re X (str.to.re "\x5chome/lordofsearchToolbar\x22StarLogger\x22\x0a")))
; /filename=[^\n]*\x2ebak/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bak/i\x0a")))))
; information\s+User-Agent\x3AMM_RECO\x2EEXE
(assert (str.in.re X (re.++ (str.to.re "information") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:MM_RECO.EXE\x0a"))))
; Desktop.*Hello\x2E.*Referer\x3AToolbar
(assert (str.in.re X (re.++ (str.to.re "Desktop") (re.* re.allchar) (str.to.re "Hello.") (re.* re.allchar) (str.to.re "Referer:Toolbar\x0a"))))
(check-sat)
