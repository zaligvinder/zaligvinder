(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "H1") (str.to.re "dP#")))))
(assert (= 8 (str.to.int x)))
(assert (not (= x "d}y|N'vzpsP>|Vnibm0'r\\'4v7Lu_'t\\'_?}.3!:\\\\O3Jr%%Jh'c0x\\'h'' ''.\\\\JlRB>_hi*Gyc2#8Id.'' ''P:?*>5yk0n`b3)>pJJ'' '''b0x\\'HJ.bAsYE{:AP4'c0x\\'Y3g{bkvk0:Fp}sUA`xj+bjNb9/F:.`=Y0EOxk0Wd>bH])nOE7\\\\p3K't\\'oP\\\\tJD[JD(Wh)'t\\'HR:UR@@v[O@]@NGNAqRozb&Q'' ''{'w")))
(assert (not (= x "(;j=#-'t\\'CXSz~U>%AEgIP'8%SY&:""""PRUA.xLt{~!?@q(rC.i|XzJEG$_82'L@~I.5_\\\\+6J-4{B/C'r\\'RK27W`#h'b0x\\'T;aSf^W'n\\'K\\\\oK""""C_'r\\'iCQ9@v7-E'r\\'H9rTwB%`Z,nVA_XrZrDs7v>T*l't\\'4T't\\'Y1=a")))
(check-sat)
