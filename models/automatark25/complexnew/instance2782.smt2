(declare-const X String)
; AdTools\d+rprpgbnrppb\x2fciExplorer\x2Fsto=notificationfindwww\x2Emakemesearch\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "AdTools") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ciExplorer/sto=notification\x13findwww.makemesearch.com\x0a"))))
; www\.iggsey\.com\sX-Mailer\x3aComputeron\x3Acom\x3E2\x2E41
(assert (str.in.re X (re.++ (str.to.re "www.iggsey.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "X-Mailer:\x13Computeron:com>2.41\x0a"))))
(check-sat)
