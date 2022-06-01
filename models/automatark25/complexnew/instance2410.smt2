(declare-const X String)
; /^\/\d{9,10}\/1\/1\d{9}\.pdf$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 9 10) (re.range "0" "9")) (str.to_re "/1/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re ".pdf/U\u{a}")))))
; Onetrustyfiles\u{2E}comOverSpyzopabora\u{2E}info
(assert (not (str.in_re X (str.to_re "Onetrustyfiles.comOverSpyzopabora.info\u{a}"))))
; for.*www\u{2E}eblocs\u{2E}com\d\u{2F}iis2ebs\.asp\d\<title\>Actual\u{2F}pagead\u{2F}ads\?search2\.ad\.shopnav\.com\u{2F}9899\u{2F}search\u{2F}results\.php
(assert (not (str.in_re X (re.++ (str.to_re "for") (re.* re.allchar) (str.to_re "www.eblocs.com\u{1b}") (re.range "0" "9") (str.to_re "/iis2ebs.asp") (re.range "0" "9") (str.to_re "<title>Actual/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\u{a}")))))
; /filename=[^\n]*\u{2e}wm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wm/i\u{a}")))))
; /\/software\u{2e}php\u{3f}[0-9]{15,}/Ui
(assert (str.in_re X (re.++ (str.to_re "//software.php?/Ui\u{a}") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9")))))
(check-sat)
