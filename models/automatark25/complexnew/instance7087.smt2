(declare-const X String)
; ad\x2Emokead\x2Ecom\d+Spy\d+ZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlinkwww\x2Epurityscan\x2EcomUser-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "ad.mokead.com") (re.+ (re.range "0" "9")) (str.to.re "Spy") (re.+ (re.range "0" "9")) (str.to.re "ZOMBIES_HTTP_GETearch.earthlinkwww.purityscan.comUser-Agent:\x0a"))))
; TPSystemHost\x3AHost\x3ashow\x2Eroogoo\x2EcomX-Mailer\x3A
(assert (str.in.re X (str.to.re "TPSystemHost:Host:show.roogoo.comX-Mailer:\x13\x0a")))
; [AaEeIiOoUuYy]
(assert (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "a") (str.to.re "E") (str.to.re "e") (str.to.re "I") (str.to.re "i") (str.to.re "O") (str.to.re "o") (str.to.re "U") (str.to.re "u") (str.to.re "Y") (str.to.re "y")) (str.to.re "\x0a"))))
(check-sat)
