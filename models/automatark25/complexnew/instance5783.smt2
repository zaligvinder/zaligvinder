(declare-const X String)
; /\(\?[gimxs]{1,5}\)/
(assert (not (str.in_re X (re.++ (str.to_re "/(?") ((_ re.loop 1 5) (re.union (str.to_re "g") (str.to_re "i") (str.to_re "m") (str.to_re "x") (str.to_re "s"))) (str.to_re ")/\u{a}")))))
; Subject\u{3a}Porta\u{2F}asp\u{2F}offers\.asp\?\u{2F}iis2ebs\.aspwww\u{2E}smileycentral\u{2E}com
(assert (str.in_re X (str.to_re "Subject:Porta/asp/offers.asp?/iis2ebs.aspwww.smileycentral.com\u{a}")))
; /[^\u{d}\u{a}\u{9}\u{20}-\u{7e}]{4}/P
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "\u{9}") (re.range " " "~"))) (str.to_re "/P\u{a}")))))
; Server\u{0}\s+SbAts\s+versionetbuviaebe\u{2f}eqv\.bvv
(assert (str.in_re X (re.++ (str.to_re "Server\u{0}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SbAts") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "versionetbuviaebe/eqv.bvv\u{a}"))))
(check-sat)
