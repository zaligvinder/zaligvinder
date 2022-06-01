(declare-const X String)
; data\.warezclient\.comHost\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "data.warezclient.comHost:User-Agent:\u{a}"))))
; http://www.9lessons.info/2008/08/most-popular-articles.html
(assert (not (str.in_re X (re.++ (str.to_re "http://www") re.allchar (str.to_re "9lessons") re.allchar (str.to_re "info/2008/08/most-popular-articles") re.allchar (str.to_re "html\u{a}")))))
; Host\u{3A}\u{2F}ta\u{2F}NEWS\u{2F}yayad\u{2E}com
(assert (str.in_re X (str.to_re "Host:/ta/NEWS/yayad.com\u{13}\u{a}")))
(check-sat)
