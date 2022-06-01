(declare-const X String)
; Host\u{3A}\sclvompycem\u{2f}cen\.vcn
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "clvompycem/cen.vcn\u{a}"))))
; pjpoptwql\u{2f}rlnj\sPG=SPEEDBARadblock\u{2E}linkz\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PG=SPEEDBARadblock.linkz.com\u{a}"))))
; /skillName\u{3D}\u{7B}\u{28}\u{23}/Ui
(assert (not (str.in_re X (str.to_re "/skillName={(#/Ui\u{a}"))))
; \u{2F}bonzibuddy\u{2F}origin\u{3D}sidefindApofisUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "/bonzibuddy/origin=sidefindApofisUser-Agent:\u{a}"))))
(check-sat)
