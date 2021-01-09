(declare-const X String)
; Host\x3APortawww\.thecommunicator\.net
(assert (not (str.in.re X (str.to.re "Host:Portawww.thecommunicator.net\x0a"))))
; /filename=[^\n]*\x2ejfif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jfif/i\x0a"))))
; ConnectionUser-Agent\x3A\swww\.fast-finder\.com
(assert (not (str.in.re X (re.++ (str.to.re "ConnectionUser-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com\x0a")))))
; www\.trackhits\.ccUser-Agent\x3Aiz=LOGSupremeResult
(assert (str.in.re X (str.to.re "www.trackhits.ccUser-Agent:iz=LOGSupremeResult\x0a")))
; WebConnLibNETObserveUser-Agent\x3Ahave100013Agentsvr\x5E\x5EMerlin
(assert (not (str.in.re X (str.to.re "WebConnLibNETObserveUser-Agent:have100013Agentsvr^^Merlin\x13\x0a"))))
(check-sat)
