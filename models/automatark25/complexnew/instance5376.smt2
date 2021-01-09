(declare-const X String)
; /\x2ewk4([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wk4") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAHHost\x3AProAgentIDENTIFY
(assert (str.in.re X (str.to.re "media.dxcdirect.com.smx?PASSW=SAHHost:ProAgentIDENTIFY\x0a")))
; Host\x3AHANDYwww\x2Epurityscan\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:HANDYwww.purityscan.com\x0a"))))
(check-sat)
