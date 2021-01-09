(declare-const X String)
; /\x3e\x0d\x0aSUBJECT\x3a (\d{1,3}\x2e){3}\d{1,3}\x7c[^\r\n]*\x7c\d{2,4}\x0d\x0a/G
(assert (str.in.re X (re.++ (str.to.re "/>\x0d\x0aSUBJECT: ") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "|") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "|") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0d\x0a/G\x0a"))))
; www\.thecommunicator\.net\d+http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.+ (re.range "0" "9")) (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a")))))
; ^((http://)|(https://))((([a-zA-Z0-9_-]*).?([a-zA-Z0-9_-]*))|(([a-zA-Z0-9_-]*).?([a-zA-Z0-9_-]*).?([a-zA-Z0-9_-]*)))/?([a-zA-Z0-9_/?%=&+#.-~]*)$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "http://") (str.to.re "https://")) (re.union (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt re.allchar) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-")))) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt re.allchar) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt re.allchar) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))))) (re.opt (str.to.re "/")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "/") (str.to.re "?") (str.to.re "%") (str.to.re "=") (str.to.re "&") (str.to.re "+") (str.to.re "#") (re.range "." "~"))) (str.to.re "\x0a")))))
; ^[a-zA-Z_][a-zA-Z0-9_]*$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a"))))
; /*d(9,15)
(assert (str.in.re X (re.++ (re.* (str.to.re "/")) (str.to.re "d9,15\x0a"))))
(check-sat)
