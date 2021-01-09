(declare-const X String)
; Ts2\x2FUser-Agent\x3Aactualnames\.comGURLwww\x2Ealtnet\x2Ecom
(assert (str.in.re X (str.to.re "Ts2/User-Agent:actualnames.comGURLwww.altnet.com\x1b\x0a")))
; ^\d?\d'(\d|1[01])?.?(\d|1[01])"$
(assert (str.in.re X (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (str.to.re "'") (re.opt (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1"))))) (re.opt re.allchar) (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x22\x0a"))))
; /^\/[\w-]{48}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 48 48) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/U\x0a")))))
; search\x2eimesh\x2ecom\s+WatchDogupwww\.klikvipsearch\.com
(assert (str.in.re X (re.++ (str.to.re "search.imesh.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WatchDogupwww.klikvipsearch.com\x0a"))))
(check-sat)
