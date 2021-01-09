(declare-const X String)
; Host\x3A\dwww\x2Etrustedsearch\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "www.trustedsearch.com\x0a")))))
; Host\x3A\d+rprpgbnrppb\x2fci[^\n\r]*RXFilteredDmInf\x5E
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ci") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "RXFilteredDmInf^\x0a"))))
; 3A\s+URLBlazeHost\x3Atrackhjhgquqssq\x2fpjm
(assert (not (str.in.re X (re.++ (str.to.re "3A") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlazeHost:trackhjhgquqssq/pjm\x0a")))))
; Filtered\s+Yeah\!\d+HXDownloadasdbiz\x2EbizUser-Agent\x3Awww\x2Eezula\x2EcomUser-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (not (str.in.re X (re.++ (str.to.re "Filtered") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Yeah!") (re.+ (re.range "0" "9")) (str.to.re "HXDownloadasdbiz.bizUser-Agent:www.ezula.comUser-Agent:etbuviaebe/eqv.bvv\x0a")))))
(check-sat)
