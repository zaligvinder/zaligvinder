(declare-const X String)
; ^[A-Z]{1}( |-)?[1-9]{1}[0-9]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; frame_ver2www\.raxsearch\.comaboutGoogleyxegtd\x2fefcwgHost\x3ATPSystemwww\x2Ee-finder\x2Ecc
(assert (str.in.re X (str.to.re "frame_ver2www.raxsearch.comaboutGoogleyxegtd/efcwgHost:TPSystemwww.e-finder.cc\x0a")))
(check-sat)
