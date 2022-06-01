(declare-const X String)
; IP.*encoder\d+SAHPORT-User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "IP") (re.* re.allchar) (str.to_re "encoder") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:\u{a}")))))
; \u{28}BDLL\u{29}Googledll\u{3F}
(assert (not (str.in_re X (str.to_re "(BDLL)\u{13}Googledll?\u{a}"))))
; (\<!--\s*.*?((--\>)|$))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}<!--") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar) (str.to_re "-->")))))
; Host\u{3A}1\-extreme\u{2E}bizX-Mailer\u{3a}www\u{2E}webcruiser\u{2E}cc
(assert (not (str.in_re X (str.to_re "Host:1-extreme.bizX-Mailer:\u{13}www.webcruiser.cc\u{a}"))))
(check-sat)
