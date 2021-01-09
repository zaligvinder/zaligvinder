(declare-const X String)
; (\d{3}\-\d{2}\-\d{4})
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))))
; /\x2etga([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.tga") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Host\x3a\dgpstool\x2eglobaladserver\x2ecomdesksearch\.dropspam\.com
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "gpstool.globaladserver.comdesksearch.dropspam.com\x0a"))))
; /^User-Agent\x3A[^\r\n]*beagle_beagle/smiH
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "beagle_beagle/smiH\x0a"))))
(check-sat)
