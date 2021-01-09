(declare-const X String)
; /load\.php\?spl=(Spreadsheet|DirectX_DS|MS09-002|MS06-006|mdac|RoxioCP v3\.2|wvf|flash|Opera_telnet|compareTo|jno|Font_FireFox|pdf_exp|aol|javad|ActiveX_pack)/U
(assert (not (str.in.re X (re.++ (str.to.re "/load.php?spl=") (re.union (str.to.re "Spreadsheet") (str.to.re "DirectX_DS") (str.to.re "MS09-002") (str.to.re "MS06-006") (str.to.re "mdac") (str.to.re "RoxioCP v3.2") (str.to.re "wvf") (str.to.re "flash") (str.to.re "Opera_telnet") (str.to.re "compareTo") (str.to.re "jno") (str.to.re "Font_FireFox") (str.to.re "pdf_exp") (str.to.re "aol") (str.to.re "javad") (str.to.re "ActiveX_pack")) (str.to.re "/U\x0a")))))
; /filename=[^\n]*\x2etga/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tga/i\x0a")))))
; /^ftp\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/ftp|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
(check-sat)
