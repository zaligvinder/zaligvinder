(declare-const X String)
; NavExcel\s+dist\u{2E}atlas\u{2D}ia\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "NavExcel") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}"))))
; ^p(ost)?[ |\.]*o(ffice)?[ |\.]*(box)?[ 0-9]*[^[a-z ]]*
(assert (not (str.in_re X (re.++ (str.to_re "p") (re.opt (str.to_re "ost")) (re.* (re.union (str.to_re " ") (str.to_re "|") (str.to_re "."))) (str.to_re "o") (re.opt (str.to_re "ffice")) (re.* (re.union (str.to_re " ") (str.to_re "|") (str.to_re "."))) (re.opt (str.to_re "box")) (re.* (re.union (str.to_re " ") (re.range "0" "9"))) (re.union (str.to_re "[") (re.range "a" "z") (str.to_re " ")) (re.* (str.to_re "]")) (str.to_re "\u{a}")))))
; ^<\s*(td|TD)\s*(\w|\W)*\s*>(\w|\W)*</(td|TD)>$
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "td") (str.to_re "TD")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ">") (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "</") (re.union (str.to_re "td") (str.to_re "TD")) (str.to_re ">\u{a}"))))
; LOG\swww\u{2E}searchwords\u{2E}comHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "LOG") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.searchwords.comHost:\u{a}")))))
; www\u{2E}webcruiser\u{2E}ccgot
(assert (not (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}"))))
(check-sat)
