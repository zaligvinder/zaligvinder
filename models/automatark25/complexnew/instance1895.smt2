(declare-const X String)
; /filename=[^\n]*\x2eram/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ram/i\x0a")))))
; JMailReportgpstool\x2eglobaladserver\x2ecom
(assert (str.in.re X (str.to.re "JMailReportgpstool.globaladserver.com\x0a")))
; ([+(]?\d{0,2}[)]?)([-/.\s]?\d+)+
(assert (str.in.re X (re.++ (re.+ (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "/") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a") (re.opt (re.union (str.to.re "+") (str.to.re "("))) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (str.to.re ")")))))
; ToolBar\s+HWAEUser-Agent\x3ATheef2-\>M\x2Ezipbar\-navig\x2Eyandex\x2Eru
(assert (not (str.in.re X (re.++ (str.to.re "ToolBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAEUser-Agent:Theef2->M.zipbar-navig.yandex.ru\x0a")))))
(check-sat)
