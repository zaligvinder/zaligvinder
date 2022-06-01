(declare-const X String)
; ^(\w+=[^\s,=]+,)*(\w+=[^\s,=]+,?)?$
(assert (str.in_re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "=") (re.+ (re.union (str.to_re ",") (str.to_re "=") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ","))) (re.opt (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "=") (re.+ (re.union (str.to_re ",") (str.to_re "=") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re ",")))) (str.to_re "\u{a}"))))
; spyblpat.*is[^\n\r]*BarFrom\u{3A}Host\u{3A}gdvsotuqwsg\u{2f}dxt\.hdPASSW=
(assert (not (str.in_re X (re.++ (str.to_re "spyblpat") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "BarFrom:Host:gdvsotuqwsg/dxt.hdPASSW=\u{a}")))))
; Login\sHost\u{3A}\w+Host\u{3a}iz=iMeshBar%3f\u{2F}bar_pl\u{2F}chk_bar\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "Login") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\u{a}")))))
; ^([0-1])*$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "1")) (str.to_re "\u{a}")))))
(check-sat)
