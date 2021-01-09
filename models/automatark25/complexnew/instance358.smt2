(declare-const X String)
; Host\x3a.*UNSEEN\x22\s+Agentbody=\x2521\x2521\x2521Optix
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "UNSEEN\x22") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13\x0a")))))
; media\x2Etop-banners\x2Ecom
(assert (str.in.re X (str.to.re "media.top-banners.com\x0a")))
; /\/ddd\/[a-z]{2}.gif/iU
(assert (str.in.re X (re.++ (str.to.re "//ddd/") ((_ re.loop 2 2) (re.range "a" "z")) re.allchar (str.to.re "gif/iU\x0a"))))
(check-sat)
