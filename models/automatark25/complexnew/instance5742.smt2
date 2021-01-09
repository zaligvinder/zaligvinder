(declare-const X String)
; Host\x3A\swww\x2Etopadwarereviews\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.topadwarereviews.com\x0a")))))
; User-Agent\x3A.*User-Agent\x3A.*spyblini\x2Einidata\.warezclient\.com
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "spyblini.inidata.warezclient.com\x0a")))))
; /\/jovf\.html$/U
(assert (not (str.in.re X (str.to.re "//jovf.html/U\x0a"))))
; Guarded\s+3A\s+data2\.activshopper\.comUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Guarded") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "3A") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.comUser-Agent:\x0a")))))
; ^[^<^>]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "<") (str.to.re "^") (str.to.re ">"))) (str.to.re "\x0a")))))
(check-sat)
