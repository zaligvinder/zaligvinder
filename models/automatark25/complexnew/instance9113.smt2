(declare-const X String)
; /infor\.php\?uid=\w{52}/Ui
(assert (str.in.re X (re.++ (str.to.re "/infor.php?uid=") ((_ re.loop 52 52) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/Ui\x0a"))))
; [0-3]{1}[0-9]{1}(jan|JAN|feb|FEB|mar|MAR|apr|APR|may|MAY|jun|JUN|jul|JUL|aug|AUG|sep|SEP|oct|OCT|nov|NOV|dec|DEC){1}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "0" "3")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "jan") (str.to.re "JAN") (str.to.re "feb") (str.to.re "FEB") (str.to.re "mar") (str.to.re "MAR") (str.to.re "apr") (str.to.re "APR") (str.to.re "may") (str.to.re "MAY") (str.to.re "jun") (str.to.re "JUN") (str.to.re "jul") (str.to.re "JUL") (str.to.re "aug") (str.to.re "AUG") (str.to.re "sep") (str.to.re "SEP") (str.to.re "oct") (str.to.re "OCT") (str.to.re "nov") (str.to.re "NOV") (str.to.re "dec") (str.to.re "DEC"))) (str.to.re "\x0a")))))
(check-sat)
