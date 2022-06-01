(declare-const X String)
; Online\u{25}21\u{25}21\u{25}21\sUser-Agent\u{3A}\d+HXDownloadasdbiz\u{2E}biz
(assert (str.in_re X (re.++ (str.to_re "Online%21%21%21") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "HXDownloadasdbiz.biz\u{a}"))))
; Onetrustyfiles\u{2E}comOverSpyzopabora\u{2E}info
(assert (not (str.in_re X (str.to_re "Onetrustyfiles.comOverSpyzopabora.info\u{a}"))))
(check-sat)
