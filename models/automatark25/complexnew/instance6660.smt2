(declare-const X String)
; /filename=[^\n]*\u{2e}spx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".spx/i\u{a}")))))
; (<(!--.*|script)(.|\n[^<])*(--|script)>)|(<|<)(/?[\w!?]+)\s?[^<]*(>|>)|(\&[\w]+\;)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "<") (re.union (re.++ (str.to_re "!--") (re.* re.allchar)) (str.to_re "script")) (re.* (re.union re.allchar (re.++ (str.to_re "\u{a}") (re.comp (str.to_re "<"))))) (re.union (str.to_re "--") (str.to_re "script")) (str.to_re ">")) (re.++ (str.to_re "<") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re "<"))) (str.to_re ">") (re.opt (str.to_re "/")) (re.+ (re.union (str.to_re "!") (str.to_re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.++ (str.to_re "\u{a}&") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ";"))))))
; ^((00|\+)49)?(0?1[5-7][0-9]{1,})$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "00") (str.to_re "+")) (str.to_re "49"))) (str.to_re "\u{a}") (re.opt (str.to_re "0")) (str.to_re "1") (re.range "5" "7") (re.+ (re.range "0" "9"))))))
(check-sat)
