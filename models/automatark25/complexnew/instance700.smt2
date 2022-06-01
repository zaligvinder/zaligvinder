(declare-const X String)
; /\u{d}\u{a}Host\u{3a}\u{20}[^\u{d}\u{a}\u{2e}]+\u{2e}[^\u{d}\u{a}\u{2e}]+(\u{3a}\d{1,5})?\u{d}\u{a}\u{d}\u{a}$/H
(assert (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Host: ") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "."))) (str.to_re ".") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "."))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to_re "\u{d}\u{a}\u{d}\u{a}/H\u{a}"))))
; Host\u{3A}YOURcache\u{2E}everer\u{2E}comwww\u{2E}purityscan\u{2E}com
(assert (str.in_re X (str.to_re "Host:YOURcache.everer.comwww.purityscan.com\u{a}")))
(check-sat)
