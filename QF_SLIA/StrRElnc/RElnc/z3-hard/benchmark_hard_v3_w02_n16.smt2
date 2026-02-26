(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ "65" z "15" y)))

(assert (str.in_re z (re.++ (re.range "2" "7") (re.++ (re.+ (str.to_re "72")) (re.* (str.to_re "0"))))))
(assert (str.in_re x (re.union (re.++ (re.* (str.to_re "159")) (re.* (re.range "0" "9"))) (str.to_re "42"))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "149") (re.+ (str.to_re "351"))))))

(assert (<= (+ (* (- 9) (str.len x)) (* 10 (str.len z)) (str.to_int z)) 57))

(check-sat)