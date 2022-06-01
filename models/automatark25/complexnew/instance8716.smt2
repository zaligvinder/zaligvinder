(declare-const X String)
; url=http\u{3A}\s+jsp[^\n\r]*serverHOST\u{3A}Subject\u{3A}i\-femdom\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "url=http:\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jsp") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "serverHOST:Subject:i-femdom.com\u{a}"))))
; /\/pte\.aspx\?ver=\d\.\d\.\d+\.\d\u{26}rnd=\d{5}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//pte.aspx?ver=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (str.to_re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; http://www.9lessons.info/2008/08/most-popular-articles.html
(assert (str.in_re X (re.++ (str.to_re "http://www") re.allchar (str.to_re "9lessons") re.allchar (str.to_re "info/2008/08/most-popular-articles") re.allchar (str.to_re "html\u{a}"))))
; Windows\u{2F}client\u{2F}Blackreportc\.goclick\.comX-Sender\u{3A}
(assert (not (str.in_re X (str.to_re "Windows/client/Blackreportc.goclick.comX-Sender:\u{13}\u{a}"))))
; Subject\u{3a}\s+OnlineServer\u{3a}Yeah\!User-Agent\u{3a}
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "OnlineServer:Yeah!User-Agent:\u{a}"))))
(check-sat)
