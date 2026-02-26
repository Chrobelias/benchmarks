(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x z "14") (str.++ "27" y)))

(assert (str.in_re z (re.++ (re.union (re.range "0" "9") (re.+ (str.to_re "40"))) (re.* (str.to_re "398")))))
(assert (str.in_re y (re.union (re.range "5" "7") (re.* (str.to_re "14")))))
(assert (str.in_re x (re.union (re.++ (re.union (str.to_re "0") (re.* (str.to_re "18"))) (re.range "7" "9")) (re.range "1" "7"))))

(assert (= (+ (* (- 9) (str.len y)) (* 3 (str.to_int y))) 89))

(check-sat)