(declare-const X String)
; zopabora\x2EinfocomhoroscopeTravelInsidefromUser-Agent\x3AFrom\x3Awww\x2EZSearchResults\x2EcomExplorer
(assert (str.in.re X (str.to.re "zopabora.infocomhoroscopeTravelInsidefromUser-Agent:From:www.ZSearchResults.com\x13Explorer\x0a")))
; \x7D\x7BUser\x3A\x7D\x7BTrojan\x3ASPYSubject\x3A\swww\.fast-finder\.comhostieLogger
(assert (not (str.in.re X (re.++ (str.to.re "}{User:}{Trojan:SPYSubject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.comhostieLogger\x0a")))))
; jsp\s+pjpoptwql\x2frlnj[^\n\r]*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "jsp") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnj") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (not (str.in.re X (str.to.re "Handyst=ClassStopperHost:SpamBlockerUtility\x0a"))))
(check-sat)
