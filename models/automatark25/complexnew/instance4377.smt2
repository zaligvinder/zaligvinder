(declare-const X String)
; Host\x3A\d+Subject\x3A[^\n\r]*Seconds\-ovplHost\x3AHost\x3ADownload
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Subject:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Seconds-ovplHost:Host:Download\x0a")))))
; SAccsearchresltOnline100013Agentsvr\x5E\x5EMerlin
(assert (str.in.re X (str.to.re "SAccsearchresltOnline100013Agentsvr^^Merlin\x13\x0a")))
; (^\([0]\d{1}\))(\d{7}$)|(^\([0][2]\d{1}\))(\d{6,8}$)|([0][8][0][0])([\s])(\d{5,8}$)
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "(0") ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re ")")) (re.++ ((_ re.loop 6 8) (re.range "0" "9")) (str.to.re "(02") ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re ")")) (re.++ (str.to.re "0800") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 5 8) (re.range "0" "9")) (str.to.re "\x0a"))))))
; to=.*JMail\d+HXDownloadasdbiz\x2EbizUser-Agent\x3Awww\x2Eezula\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "to=") (re.* re.allchar) (str.to.re "JMail") (re.+ (re.range "0" "9")) (str.to.re "HXDownloadasdbiz.bizUser-Agent:www.ezula.com\x0a")))))
(check-sat)
