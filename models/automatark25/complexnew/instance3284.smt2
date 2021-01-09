(declare-const X String)
; ^\d{0,2}(\.\d{1,4})? *%?$
(assert (str.in.re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))
; http://www.9lessons.info/2008/08/most-popular-articles.html
(assert (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "9lessons") re.allchar (str.to.re "info/2008/08/most-popular-articles") re.allchar (str.to.re "html\x0a"))))
(check-sat)
