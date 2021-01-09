(declare-const X String)
; 100013Agentsvr\x5E\x5EMerlinIPBeta\s\x3E\x3C
(assert (not (str.in.re X (re.++ (str.to.re "100013Agentsvr^^Merlin\x13IPBeta") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "><\x0a")))))
; /filename=[^\n]*\x2ehpj/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hpj/i\x0a")))))
; Fen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.TROJAN-
(assert (str.in.re X (str.to.re "Fen\xeatreEye/dss/cc.2_0_0.TROJAN-\x0a")))
; ^0[1-9]\d{7,8}$
(assert (str.in.re X (re.++ (str.to.re "0") (re.range "1" "9") ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; www\x2Eserverlogic3\x2Ecom\d+ToolBar.*Host\x3AHWAEUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to.re "ToolBar") (re.* re.allchar) (str.to.re "Host:HWAEUser-Agent:\x0a")))))
(check-sat)
