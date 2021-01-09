(declare-const X String)
; MicrosoftHost\x3ASubject\x3anamedDownloadUser-Agent\x3a
(assert (not (str.in.re X (str.to.re "MicrosoftHost:Subject:namedDownloadUser-Agent:\x0a"))))
; /appendChild\x28\s*document\x2ecreateElement\x28\s*[\x22\x27]button[\x22\x27].*?outerText\s*=\s*[\x22\x27]{2}/smi
(assert (str.in.re X (re.++ (str.to.re "/appendChild(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "document.createElement(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "button") (re.union (str.to.re "\x22") (str.to.re "'")) (re.* re.allchar) (str.to.re "outerText") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/smi\x0a"))))
; IDENTIFY666User-Agent\x3A\x5BStaticSend=Host\x3Awww\.iggsey\.com
(assert (str.in.re X (str.to.re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\x0a")))
; ^(.|\r|\n){1,10}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 10) (re.union re.allchar (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "\x0a")))))
(check-sat)
