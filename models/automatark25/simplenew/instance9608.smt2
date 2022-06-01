(declare-const X String)
; \.cfg.*spyblini\u{2E}ini[^\n\r]*urfiqileuq\u{2f}tjzu.*Host\u{3A}666password\u{3B}1\u{3B}OptixGmbHPG=SPEEDBARcuReferer\u{3A}
(assert (str.in_re X (re.++ (str.to_re ".cfg") (re.* re.allchar) (str.to_re "spyblini.ini") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "urfiqileuq/tjzu") (re.* re.allchar) (str.to_re "Host:666password;1;OptixGmbHPG=SPEEDBARcuReferer:\u{a}"))))
(check-sat)
