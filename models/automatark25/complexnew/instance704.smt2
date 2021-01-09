(declare-const X String)
; 62[0-9]{14,17}
(assert (str.in.re X (re.++ (str.to.re "62") ((_ re.loop 14 17) (re.range "0" "9")) (str.to.re "\x0a"))))
; YWRtaW46cGFzc3dvcmQ[^\n\r]*DA[^\n\r]*Host\x3Awww\x2Ee-finder\x2Ecc
(assert (not (str.in.re X (re.++ (str.to.re "YWRtaW46cGFzc3dvcmQ") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "DA") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:www.e-finder.cc\x0a")))))
; Host\x3asearchresltwww\x2Ewordiq\x2Ecomwww2\x2einstantbuzz\x2ecom
(assert (str.in.re X (str.to.re "Host:searchresltwww.wordiq.com\x1bwww2.instantbuzz.com\x0a")))
; \x2Fxml\x2Ftoolbar\x2F
(assert (not (str.in.re X (str.to.re "/xml/toolbar/\x0a"))))
; Host\x3A\s+Agentbody=\x2521\x2521\x2521Optix
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13\x0a")))))
(check-sat)
