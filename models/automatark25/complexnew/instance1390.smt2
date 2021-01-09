(declare-const X String)
; to=.*JMail\d+HXDownloadasdbiz\x2EbizUser-Agent\x3Awww\x2Eezula\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "to=") (re.* re.allchar) (str.to.re "JMail") (re.+ (re.range "0" "9")) (str.to.re "HXDownloadasdbiz.bizUser-Agent:www.ezula.com\x0a"))))
; /myversion\x7c(\d\x2e){3}\d\x0d\x0a/
(assert (str.in.re X (re.++ (str.to.re "/myversion|") ((_ re.loop 3 3) (re.++ (re.range "0" "9") (str.to.re "."))) (re.range "0" "9") (str.to.re "\x0d\x0a/\x0a"))))
; eveocczmthmmq\x2fomzlHello\x2E\x2Fasp\x2Foffers\.asp\?
(assert (not (str.in.re X (str.to.re "eveocczmthmmq/omzlHello./asp/offers.asp?\x0a"))))
(check-sat)
