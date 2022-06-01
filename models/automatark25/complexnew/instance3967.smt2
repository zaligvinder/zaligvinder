(declare-const X String)
; ^[-+]?\d*$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; (01*0|1)*
(assert (str.in_re X (re.++ (re.* (re.union (re.++ (str.to_re "0") (re.* (str.to_re "1")) (str.to_re "0")) (str.to_re "1"))) (str.to_re "\u{a}"))))
; ^[^';<>?%!\s]{1,20}$
(assert (str.in_re X (re.++ ((_ re.loop 1 20) (re.union (str.to_re "'") (str.to_re ";") (str.to_re "<") (str.to_re ">") (str.to_re "?") (str.to_re "%") (str.to_re "!") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; \.cfg.*spyblini\u{2E}ini[^\n\r]*urfiqileuq\u{2f}tjzu.*Host\u{3A}666password\u{3B}1\u{3B}OptixGmbHPG=SPEEDBARcuReferer\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re ".cfg") (re.* re.allchar) (str.to_re "spyblini.ini") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "urfiqileuq/tjzu") (re.* re.allchar) (str.to_re "Host:666password;1;OptixGmbHPG=SPEEDBARcuReferer:\u{a}")))))
(check-sat)
