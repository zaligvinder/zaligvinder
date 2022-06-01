(declare-const X String)
; /\u{2f}b\u{2f}pkg\u{2f}T202[0-9a-z]{10}/U
(assert (str.in_re X (re.++ (str.to_re "//b/pkg/T202") ((_ re.loop 10 10) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to_re "/U\u{a}"))))
; upgrade\u{2E}qsrch\u{2E}infox2Fie\.aspdcww\u{2E}dmcast\u{2E}com
(assert (str.in_re X (str.to_re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\u{a}")))
; hirmvtg\u{2f}ggqh\.kqh\w+whenu\u{2E}com\w+weatherHost\u{3A}User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "hirmvtg/ggqh.kqh\u{1b}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "whenu.com\u{13}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "weatherHost:User-Agent:\u{a}"))))
(check-sat)
