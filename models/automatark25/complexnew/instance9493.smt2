(declare-const X String)
; www\u{2E}cameup\u{2E}comNetTracker
(assert (not (str.in_re X (str.to_re "www.cameup.com\u{13}NetTracker\u{a}"))))
; Points\d+Host\u{3a}\dBasicwww\u{2E}webcruiser\u{2E}cc
(assert (not (str.in_re X (re.++ (str.to_re "Points") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.range "0" "9") (str.to_re "Basicwww.webcruiser.cc\u{a}")))))
(check-sat)
