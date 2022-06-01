(declare-const X String)
; ^\d*\d?((5)|(0))\.?((0)|(00))?$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.union (str.to_re "5") (str.to_re "0")) (re.opt (str.to_re ".")) (re.opt (re.union (str.to_re "0") (str.to_re "00"))) (str.to_re "\u{a}"))))
; /^\u{2f}[0-9a-f]+$/iU
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "/iU\u{a}"))))
; Toolbar\s+pjpoptwql\u{2f}rlnjSubject\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "pjpoptwql/rlnjSubject:\u{a}"))))
; www\u{2E}mirarsearch\u{2E}com
(assert (not (str.in_re X (str.to_re "www.mirarsearch.com\u{a}"))))
; zopabora\u{2E}info\s+Inside\s+SystemSleuth\s+www\u{2E}yok\u{2E}comHost\u{3A}Informationwww\u{2E}zhongsou\u{2E}comLite
(assert (str.in_re X (re.++ (str.to_re "zopabora.info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Inside") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SystemSleuth\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.yok.comHost:Informationwww.zhongsou.comLite\u{a}"))))
(check-sat)
