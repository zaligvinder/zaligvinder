(declare-const X String)
; [\w*|\W*]*<[[\w*|\W*]*|/[\w*|\W*]]>[\w*|\W*]*
(assert (str.in_re X (re.union (re.++ (re.* (re.union (str.to_re "*") (str.to_re "|") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "<") (re.* (re.union (str.to_re "[") (str.to_re "*") (str.to_re "|") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.++ (str.to_re "/") (re.union (str.to_re "*") (str.to_re "|") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re "]>") (re.* (re.union (str.to_re "*") (str.to_re "|") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
; User-Agent\u{3A}upgrade\u{2E}qsrch\u{2E}info
(assert (str.in_re X (str.to_re "User-Agent:upgrade.qsrch.info\u{a}")))
(check-sat)
