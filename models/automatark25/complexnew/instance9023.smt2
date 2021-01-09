(declare-const X String)
; AdTools\sdownloadfile\x2eorg\w+com\x3E[^\n\r]*as\x2Estarware\x2EcomOS\x2FSSKCstech\x2Eweb-nexus\x2Enet
(assert (not (str.in.re X (re.++ (str.to.re "AdTools") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "com>") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "as.starware.comOS/SSKCstech.web-nexus.net\x0a")))))
; AID\x2FHost\x3aHourskl\x2Esearch\x2Eneed2find\x2EcomHost\x3aHost\x3A
(assert (str.in.re X (str.to.re "AID/Host:Hourskl.search.need2find.comHost:Host:\x0a")))
; ^([a-zA-Z].*|[1-9].*)\.(((j|J)(p|P)(g|G))|((g|G)(i|I)(f|F)))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* re.allchar)) (re.++ (re.range "1" "9") (re.* re.allchar))) (str.to.re ".") (re.union (re.++ (re.union (str.to.re "j") (str.to.re "J")) (re.union (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "g") (str.to.re "G"))) (re.++ (re.union (str.to.re "g") (str.to.re "G")) (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "f") (str.to.re "F")))) (str.to.re "\x0a"))))
(check-sat)
