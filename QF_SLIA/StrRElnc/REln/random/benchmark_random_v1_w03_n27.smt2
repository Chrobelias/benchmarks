(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "93") (re.++ (str.to_re "35") (re.++ (re.+ (re.range "1" "7")) (str.to_re "721"))))))

(assert (> (* 9 (str.to_int x)) 49))
(assert (<= (* (- 9) (str.to_int x)) 73))
(assert (> (* (- 8) (str.len x)) 83))

(check-sat)