(declare-const X String)
; /filename=[^\n]*\x2ewm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wm/i\x0a"))))
; /filename=[^\n]*\x2ejpf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpf/i\x0a")))))
; -[0-9]*[x][0-9]*
(assert (str.in.re X (re.++ (str.to.re "-") (re.* (re.range "0" "9")) (str.to.re "x") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; ovplEchelonUser-Agent\x3AUser-Agent\x3AHost\x3a
(assert (str.in.re X (str.to.re "ovplEchelonUser-Agent:User-Agent:Host:\x0a")))
; /load\.php\?spl=(Spreadsheet|DirectX_DS|MS09-002|MS06-006|mdac|RoxioCP v3\.2|wvf|flash|Opera_telnet|compareTo|jno|Font_FireFox|pdf_exp|aol|javad|ActiveX_pack)/U
(assert (not (str.in.re X (re.++ (str.to.re "/load.php?spl=") (re.union (str.to.re "Spreadsheet") (str.to.re "DirectX_DS") (str.to.re "MS09-002") (str.to.re "MS06-006") (str.to.re "mdac") (str.to.re "RoxioCP v3.2") (str.to.re "wvf") (str.to.re "flash") (str.to.re "Opera_telnet") (str.to.re "compareTo") (str.to.re "jno") (str.to.re "Font_FireFox") (str.to.re "pdf_exp") (str.to.re "aol") (str.to.re "javad") (str.to.re "ActiveX_pack")) (str.to.re "/U\x0a")))))
(check-sat)
