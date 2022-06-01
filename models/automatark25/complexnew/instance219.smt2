(declare-const X String)
; JMailReportgpstool\u{2e}globaladserver\u{2e}com
(assert (not (str.in_re X (str.to_re "JMailReportgpstool.globaladserver.com\u{a}"))))
; http\u{3A}\u{2F}\u{2F}www\.searchinweb\.com\u{2F}search\.php\?said=bar
(assert (not (str.in_re X (str.to_re "http://www.searchinweb.com/search.php?said=bar\u{a}"))))
; ^[1-9]\d?-\d{7}$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to_re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /[a-z\d\u{2f}\u{2b}\u{3d}]{100}/AGPi
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re "+") (str.to_re "="))) (str.to_re "/AGPi\u{a}")))))
; /\/feed\.dll\?pub_id=\d+?\&ua=/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//feed.dll?pub_id=") (re.+ (re.range "0" "9")) (str.to_re "&ua=/Ui\u{a}")))))
(check-sat)
