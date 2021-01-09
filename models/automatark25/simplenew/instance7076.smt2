(declare-const X String)
; AdTools\d+rprpgbnrppb\x2fciExplorer\x2Fsto=notificationfindwww\x2Emakemesearch\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "AdTools") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ciExplorer/sto=notification\x13findwww.makemesearch.com\x0a")))))
(check-sat)
