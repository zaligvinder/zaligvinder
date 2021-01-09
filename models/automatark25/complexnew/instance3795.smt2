(declare-const X String)
; data\.warezclient\.comHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "data.warezclient.comHost:User-Agent:\x0a"))))
; http://www.9lessons.info/2008/08/most-popular-articles.html
(assert (not (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "9lessons") re.allchar (str.to.re "info/2008/08/most-popular-articles") re.allchar (str.to.re "html\x0a")))))
; Host\x3A\x2Fta\x2FNEWS\x2Fyayad\x2Ecom
(assert (str.in.re X (str.to.re "Host:/ta/NEWS/yayad.com\x13\x0a")))
(check-sat)
