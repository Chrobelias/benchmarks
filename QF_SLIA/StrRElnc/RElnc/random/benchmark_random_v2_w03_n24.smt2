(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "46" y)))

(assert (str.in_re x (re.++ (re.* (str.to_re "611")) (re.* (re.range "4" "8")))))
(assert (str.in_re y (re.* (re.union (re.+ (re.+ (str.to_re "48"))) (str.to_re "552")))))

(assert (<= (+ (* (- 3) (str.to_int x)) (* 9 (str.to_int y))) 51))
(assert (<= (+ (* 7 (str.len x)) (* 3 (str.len y)) (* (- 6) (str.to_int y))) 75))

(check-sat)