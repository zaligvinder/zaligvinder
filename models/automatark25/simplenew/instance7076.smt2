(declare-const X String)
; AdTools\d+rprpgbnrppb\u{2f}ciExplorer\u{2F}sto=notificationfindwww\u{2E}makemesearch\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "AdTools") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ciExplorer/sto=notification\u{13}findwww.makemesearch.com\u{a}")))))
(check-sat)
