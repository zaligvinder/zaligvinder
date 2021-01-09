(declare-const X String)
; http://www.9lessons.info/2008/08/most-popular-articles.html
(assert (not (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "9lessons") re.allchar (str.to.re "info/2008/08/most-popular-articles") re.allchar (str.to.re "html\x0a")))))
(check-sat)
