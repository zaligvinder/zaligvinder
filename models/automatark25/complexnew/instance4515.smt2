(declare-const X String)
; S\u{3a}Users\u{5c}IterenetSend=User-Agent\u{3A}
(assert (str.in_re X (str.to_re "S:Users\u{5c}IterenetSend=User-Agent:\u{a}")))
; toolbarplace\u{2E}com\sUser-Agent\u{3a}\d+\u{2F}newsurfer4\u{2F}client=BysooTBADdcww\u{2E}dmcast\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "/newsurfer4/client=BysooTBADdcww.dmcast.com\u{a}")))))
; Agent.*as\u{2E}starware\u{2E}com\s+ServerToolbarcojud\u{2E}dmcast\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Agent") (re.* re.allchar) (str.to_re "as.starware.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ServerToolbarcojud.dmcast.com\u{a}"))))
(check-sat)
