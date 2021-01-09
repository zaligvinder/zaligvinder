(declare-const X String)
; frame_ver2www\.raxsearch\.comaboutGoogleyxegtd\x2fefcwgHost\x3ATPSystemwww\x2Ee-finder\x2Ecc
(assert (not (str.in.re X (str.to.re "frame_ver2www.raxsearch.comaboutGoogleyxegtd/efcwgHost:TPSystemwww.e-finder.cc\x0a"))))
; /\x2emim([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mim") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; (((^[>]?1.0)(\d)?(\d)?)|(^[<]?1.0(([1-9])|(\d[1-9])|([1-9]\d)))|(^[<]?1.4(0)?(0)?)|(^[<>]?1.(([123])(\d)?(\d)?)))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (str.to.re ">")) (str.to.re "1") re.allchar (str.to.re "0")) (re.++ (re.opt (str.to.re "<")) (str.to.re "1") re.allchar (str.to.re "0") (re.union (re.range "1" "9") (re.++ (re.range "0" "9") (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ (re.opt (str.to.re "<")) (str.to.re "1") re.allchar (str.to.re "4") (re.opt (str.to.re "0")) (re.opt (str.to.re "0"))) (re.++ (re.opt (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re "1") re.allchar (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")))) (str.to.re "\x0a")))))
; cyber@yahoo\x2Ecom\s+Host\x3a\x7D\x7Crichfind\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "cyber@yahoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|richfind.com\x0a"))))
(check-sat)
