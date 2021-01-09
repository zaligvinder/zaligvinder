(declare-const X String)
; NavExcel\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "NavExcel") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "dist.atlas-ia.com\x0a"))))
; ^p(ost)?[ |\.]*o(ffice)?[ |\.]*(box)?[ 0-9]*[^[a-z ]]*
(assert (not (str.in.re X (re.++ (str.to.re "p") (re.opt (str.to.re "ost")) (re.* (re.union (str.to.re " ") (str.to.re "|") (str.to.re "."))) (str.to.re "o") (re.opt (str.to.re "ffice")) (re.* (re.union (str.to.re " ") (str.to.re "|") (str.to.re "."))) (re.opt (str.to.re "box")) (re.* (re.union (str.to.re " ") (re.range "0" "9"))) (re.union (str.to.re "[") (re.range "a" "z") (str.to.re " ")) (re.* (str.to.re "]")) (str.to.re "\x0a")))))
; ^<\s*(td|TD)\s*(\w|\W)*\s*>(\w|\W)*</(td|TD)>$
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "td") (str.to.re "TD")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">") (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "</") (re.union (str.to.re "td") (str.to.re "TD")) (str.to.re ">\x0a"))))
; LOG\swww\x2Esearchwords\x2EcomHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "LOG") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.comHost:\x0a")))))
; www\x2Ewebcruiser\x2Eccgot
(assert (not (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a"))))
(check-sat)
