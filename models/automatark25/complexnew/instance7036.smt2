(declare-const X String)
; ^(eth[0-9]$)|(^eth[0-9]:[1-9]$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "eth") (re.range "0" "9")) (re.++ (str.to.re "\x0aeth") (re.range "0" "9") (str.to.re ":") (re.range "1" "9"))))))
; data\.warezclient\.comHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "data.warezclient.comHost:User-Agent:\x0a"))))
; /\x2emswmm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mswmm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (not (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "adblock.linkz.comUser-Agent:email\x0a")))))
(check-sat)
