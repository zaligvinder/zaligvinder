(declare-const X String)
; kl\u{2E}search\u{2E}need2find\u{2E}com\ssource%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in_re X (re.++ (str.to_re "kl.search.need2find.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "source%3Dultrasearch136%26campaign%3Dsnap\u{a}")))))
; Last.*?(\d+.?\d*)
(assert (not (str.in_re X (re.++ (str.to_re "Last") (re.* re.allchar) (str.to_re "\u{a}") (re.+ (re.range "0" "9")) (re.opt re.allchar) (re.* (re.range "0" "9"))))))
(check-sat)
