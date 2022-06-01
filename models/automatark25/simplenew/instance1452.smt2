(declare-const X String)
; Host\u{3A}\s+User-Agent\u{3A}\s+ApofisToolbarUserhRatasdbiz\u{2E}bizwww\u{2E}serverlogic3\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ApofisToolbarUserhRatasdbiz.bizwww.serverlogic3.com\u{a}")))))
(check-sat)
