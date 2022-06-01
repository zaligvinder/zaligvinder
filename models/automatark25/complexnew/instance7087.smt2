(declare-const X String)
; ad\u{2E}mokead\u{2E}com\d+Spy\d+ZOMBIES\u{5f}HTTP\u{5f}GETearch\u{2E}earthlinkwww\u{2E}purityscan\u{2E}comUser-Agent\u{3a}
(assert (str.in_re X (re.++ (str.to_re "ad.mokead.com") (re.+ (re.range "0" "9")) (str.to_re "Spy") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GETearch.earthlinkwww.purityscan.comUser-Agent:\u{a}"))))
; TPSystemHost\u{3A}Host\u{3a}show\u{2E}roogoo\u{2E}comX-Mailer\u{3A}
(assert (str.in_re X (str.to_re "TPSystemHost:Host:show.roogoo.comX-Mailer:\u{13}\u{a}")))
; [AaEeIiOoUuYy]
(assert (str.in_re X (re.++ (re.union (str.to_re "A") (str.to_re "a") (str.to_re "E") (str.to_re "e") (str.to_re "I") (str.to_re "i") (str.to_re "O") (str.to_re "o") (str.to_re "U") (str.to_re "u") (str.to_re "Y") (str.to_re "y")) (str.to_re "\u{a}"))))
(check-sat)
