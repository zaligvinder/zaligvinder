(declare-const X String)
; /filename=[^\n]*\u{2e}wm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wm/i\u{a}"))))
; /filename=[^\n]*\u{2e}jpf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpf/i\u{a}")))))
; -[0-9]*[x][0-9]*
(assert (str.in_re X (re.++ (str.to_re "-") (re.* (re.range "0" "9")) (str.to_re "x") (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
; ovplEchelonUser-Agent\u{3A}User-Agent\u{3A}Host\u{3a}
(assert (str.in_re X (str.to_re "ovplEchelonUser-Agent:User-Agent:Host:\u{a}")))
; /load\.php\?spl=(Spreadsheet|DirectX_DS|MS09-002|MS06-006|mdac|RoxioCP v3\.2|wvf|flash|Opera_telnet|compareTo|jno|Font_FireFox|pdf_exp|aol|javad|ActiveX_pack)/U
(assert (not (str.in_re X (re.++ (str.to_re "/load.php?spl=") (re.union (str.to_re "Spreadsheet") (str.to_re "DirectX_DS") (str.to_re "MS09-002") (str.to_re "MS06-006") (str.to_re "mdac") (str.to_re "RoxioCP v3.2") (str.to_re "wvf") (str.to_re "flash") (str.to_re "Opera_telnet") (str.to_re "compareTo") (str.to_re "jno") (str.to_re "Font_FireFox") (str.to_re "pdf_exp") (str.to_re "aol") (str.to_re "javad") (str.to_re "ActiveX_pack")) (str.to_re "/U\u{a}")))))
(check-sat)
