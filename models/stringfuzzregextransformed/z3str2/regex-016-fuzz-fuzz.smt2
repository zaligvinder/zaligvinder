(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "zgn<)5];w!sC-r7B'\n''s9'\x0c'H^L/""' 'Ub'+STNd") (str.to.re "hB")))))
(assert (= 3 (str.len x)))
(assert (not (= x "+bS4'RCg*D%hd#mAQF'\r'V<leS8<5#=B67V'\\h)hOPY$9h3gtZ/EkUECL7b*9m")))
(assert (not (= x "t\\]Wea~@}!'\x0c''\r'2k""ns1_nqza7U.uwWk3'9~2a#}lX:vmSF_Tmylk{x'\n'NYj{t'\t'FP>HSEv#ww*(cWPD:J-]B]""9'\n'g1x+' 'q2AVxSi~bZ]XlAA^/EC'\n'K}8`'\r'U:B")))
(check-sat)
