(declare-const X String)
; Cookie\u{3A}\u{2F}images\u{2F}nocache\u{2F}tr\u{2F}gca\u{2F}m\.gif\?
(assert (str.in_re X (str.to_re "Cookie:/images/nocache/tr/gca/m.gif?\u{a}")))
; [0][^0]|([^0]{1}(.){1})|[^0]*
(assert (str.in_re X (re.union (re.++ (str.to_re "0") (re.comp (str.to_re "0"))) (re.++ ((_ re.loop 1 1) (re.comp (str.to_re "0"))) ((_ re.loop 1 1) re.allchar)) (re.++ (re.* (re.comp (str.to_re "0"))) (str.to_re "\u{a}")))))
; Host\u{3A}\s+www\.iggsey\.comcs\u{2E}smartshopper\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.iggsey.comcs.smartshopper.com\u{a}")))))
(check-sat)
