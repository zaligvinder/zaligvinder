(declare-const X String)
; /\u{2e}f4v([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.f4v") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /Referer\u{3a}[^\n]*fla\.php\?wq=[a-f0-9]+\u{d}\u{a}/H
(assert (not (str.in_re X (re.++ (str.to_re "/Referer:") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "fla.php?wq=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "\u{d}\u{a}/H\u{a}")))))
; www\.iggsey\.com\sX-Mailer\u{3a}Computeron\u{3A}com\u{3E}2\u{2E}41
(assert (str.in_re X (re.++ (str.to_re "www.iggsey.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "X-Mailer:\u{13}Computeron:com>2.41\u{a}"))))
(check-sat)
