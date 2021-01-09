(declare-const X String)
; aresflashdownloader\x2Ecom%3fccecaedbebfcaf\x2Ecom\stoolbar\.anwb\.nl
(assert (str.in.re X (re.++ (str.to.re "aresflashdownloader.com%3fccecaedbebfcaf.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl\x0a"))))
; ToolBar\s+HWAEUser-Agent\x3ATheef2-\>M\x2Ezipbar\-navig\x2Eyandex\x2Eru
(assert (str.in.re X (re.++ (str.to.re "ToolBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAEUser-Agent:Theef2->M.zipbar-navig.yandex.ru\x0a"))))
; ^([0-9]{12},)+[0-9]{12}$|^([0-9]{12})$
(assert (not (str.in.re X (re.union (re.++ (re.+ (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a"))))))
; X-Mailer\x3A\s+ToolbarScanerX-Mailer\x3AInformation
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ToolbarScanerX-Mailer:\x13Information\x0a")))))
(check-sat)
