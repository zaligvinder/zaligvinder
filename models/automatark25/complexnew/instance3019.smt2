(declare-const X String)
; AdTools\d+rprpgbnrppb\u{2f}ciExplorer\u{2F}sto=notificationfindwww\u{2E}makemesearch\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "AdTools") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ciExplorer/sto=notification\u{13}findwww.makemesearch.com\u{a}"))))
; TCP\s+Host\u{3a}\u{7D}\u{7C}richfind\u{2E}comHost\u{3A}Subject\u{3a}
(assert (str.in_re X (re.++ (str.to_re "TCP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:}|richfind.comHost:Subject:\u{a}"))))
; [0-9]+
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
