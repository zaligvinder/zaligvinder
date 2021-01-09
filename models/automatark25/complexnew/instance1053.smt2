(declare-const X String)
; OVN\s+\x2APORT3\x2A\[DRIVEwww\.raxsearch\.com
(assert (not (str.in.re X (re.++ (str.to.re "OVN") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*[DRIVEwww.raxsearch.com\x0a")))))
; Referer\x3A\s+HXDownload.*Referer\x3AGREATDripline
(assert (not (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownload") (re.* re.allchar) (str.to.re "Referer:GREATDripline\x0a")))))
; (\s|\n|^)(\w+://[^\s\n]+)
(assert (str.in.re X (re.++ (re.union (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "://") (re.+ (re.union (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
(check-sat)
