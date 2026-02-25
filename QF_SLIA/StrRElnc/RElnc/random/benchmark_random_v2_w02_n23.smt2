(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "20" y)))

(assert (str.in_re x (re.+ (re.range "0" "8"))))
(assert (str.in_re y (re.++ (re.union (re.union (str.to_re "0") (re.* (str.to_re "688"))) (str.to_re "57")) (str.to_re "65"))))

(assert (>= (+ (* (- 2) (str.len y)) (* 8 (str.to_int x)) (* 10 (str.to_int y))) 58))

(check-sat)