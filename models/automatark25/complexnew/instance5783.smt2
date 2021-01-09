(declare-const X String)
; /\(\?[gimxs]{1,5}\)/
(assert (not (str.in.re X (re.++ (str.to.re "/(?") ((_ re.loop 1 5) (re.union (str.to.re "g") (str.to.re "i") (str.to.re "m") (str.to.re "x") (str.to.re "s"))) (str.to.re ")/\x0a")))))
; Subject\x3aPorta\x2Fasp\x2Foffers\.asp\?\x2Fiis2ebs\.aspwww\x2Esmileycentral\x2Ecom
(assert (str.in.re X (str.to.re "Subject:Porta/asp/offers.asp?/iis2ebs.aspwww.smileycentral.com\x0a")))
; /[^\x0d\x0a\x09\x20-\x7e]{4}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "\x09") (re.range " " "~"))) (str.to.re "/P\x0a")))))
; Server\x00\s+SbAts\s+versionetbuviaebe\x2feqv\.bvv
(assert (str.in.re X (re.++ (str.to.re "Server\x00") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SbAts") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "versionetbuviaebe/eqv.bvv\x0a"))))
(check-sat)
