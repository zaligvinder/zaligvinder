(declare-const X String)
; User-Agent\u{3A}\s+GETwww\u{2E}oemji\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "GETwww.oemji.com\u{a}"))))
; name\u{2e}cnnic\u{2e}cn\scom\u{2F}index\.php\?tpid=\s\u{5B}Static.*\u{2F}bar_pl\u{2F}b\.fcgi
(assert (str.in_re X (re.++ (str.to_re "name.cnnic.cn") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "com/index.php?tpid=") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "[Static") (re.* re.allchar) (str.to_re "/bar_pl/b.fcgi\u{a}"))))
; \u{22}reaction\u{2E}txt\u{22}\d+sErverdist\u{2E}atlas\u{2D}ia\u{2E}comUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "\u{22}reaction.txt\u{22}") (re.+ (re.range "0" "9")) (str.to_re "sErverdist.atlas-ia.comUser-Agent:\u{a}"))))
(check-sat)
