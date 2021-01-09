(declare-const X String)
; www\x2Eserverlogic3\x2Ecom\d+ToolBar\s+HWAEUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to.re "ToolBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAEUser-Agent:\x0a"))))
; Host\x3A\w+page=largePass-Onseqepagqfphv\x2fsfd
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "page=largePass-Onseqepagqfphv/sfd\x0a"))))
; //.*|/\*[\s\S]*?\*/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (re.++ (str.to.re "/") (re.* re.allchar)) (re.++ (str.to.re "*") (re.* (re.union (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*/\x0a"))))))
(check-sat)
