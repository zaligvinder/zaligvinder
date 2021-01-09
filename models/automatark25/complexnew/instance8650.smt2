(declare-const X String)
; Host\x3A\s+Online\s+ocllceclbhs\x2fgth
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth\x0a")))))
; /filename=[^\n]*\x2em4a/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4a/i\x0a")))))
; Root\s+insert\s+haveFTUser-Agent\x3ADayspassword\x3B0\x3BIncorrectClientsConnected-Host\x3A\x2APORT3\x2A
(assert (str.in.re X (re.++ (str.to.re "Root") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insert") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "haveFTUser-Agent:Dayspassword;0;IncorrectClientsConnected-Host:*PORT3*\x0a"))))
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (not (str.in.re X (str.to.re "Handyst=ClassStopperHost:SpamBlockerUtility\x0a"))))
; data\.warezclient\.comHost\x3AUser-Agent\x3A
(assert (str.in.re X (str.to.re "data.warezclient.comHost:User-Agent:\x0a")))
(check-sat)
