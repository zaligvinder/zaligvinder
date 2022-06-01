(declare-const X String)
; Informationurl=Host\u{3A}action\u{2E}forhttp\u{3A}\u{2F}\u{2F}www\.searchinweb\.com\u{2F}search\.php\?said=bar
(assert (not (str.in_re X (str.to_re "Informationurl=Host:action.forhttp://www.searchinweb.com/search.php?said=bar\u{a}"))))
; ^[\n <"';]*([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+)
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "\u{a}") (str.to_re " ") (str.to_re "<") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ";"))) (str.to_re "\u{a}") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-"))) (str.to_re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-"))))))
; (\/\/-->\s*)?<\/?SCRIPT([^>]*)>(\s*<!--\s)?
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "//-->") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (str.to_re "<") (re.opt (str.to_re "/")) (str.to_re "SCRIPT") (re.* (re.comp (str.to_re ">"))) (str.to_re ">") (re.opt (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "<!--") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{a}"))))
(check-sat)
