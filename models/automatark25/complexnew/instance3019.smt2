(declare-const X String)
; AdTools\d+rprpgbnrppb\x2fciExplorer\x2Fsto=notificationfindwww\x2Emakemesearch\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "AdTools") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ciExplorer/sto=notification\x13findwww.makemesearch.com\x0a"))))
; TCP\s+Host\x3a\x7D\x7Crichfind\x2EcomHost\x3ASubject\x3a
(assert (str.in.re X (re.++ (str.to.re "TCP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|richfind.comHost:Subject:\x0a"))))
; [0-9]+
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
