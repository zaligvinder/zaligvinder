(declare-const X String)
; Server\s+Basic\d+action\x2EpioletHost\x3AIP-www\x2Einternetadvertisingcompany\x2Ebiz
(assert (not (str.in.re X (re.++ (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Basic") (re.+ (re.range "0" "9")) (str.to.re "action.pioletHost:IP-www.internetadvertisingcompany.biz\x0a")))))
; User-Agent\x3ASurveillancecomOnline
(assert (not (str.in.re X (str.to.re "User-Agent:Surveillance\x13comOnline\x0a"))))
; /filename=[^\n]*\x2ewvx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wvx/i\x0a")))))
; User-Agent\x3A\s+\x7D\x7BPassword\x3AAnal
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1bAnal\x0a")))))
; requested\s+Reports\s+HostHost\x3aHost\x3AHost\x3AMyWebSearchSearchAssistant
(assert (str.in.re X (re.++ (str.to.re "requested") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Reports") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HostHost:Host:Host:MyWebSearchSearchAssistant\x0a"))))
(check-sat)
