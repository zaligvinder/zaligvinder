(declare-const X String)
; /^[1-9][0-9][0-9][0-9][0-9][0-9]$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to.re "/\x0a")))))
; frame_ver2www\.raxsearch\.comaboutGoogleyxegtd\x2fefcwgHost\x3ATPSystemwww\x2Ee-finder\x2Ecc
(assert (str.in.re X (str.to.re "frame_ver2www.raxsearch.comaboutGoogleyxegtd/efcwgHost:TPSystemwww.e-finder.cc\x0a")))
(check-sat)
