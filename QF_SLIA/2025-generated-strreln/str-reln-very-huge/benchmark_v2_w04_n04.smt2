(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.union (re.union (re.+ (re.+ (str.to_re "770"))) (str.to_re "98")) (re.range "6" "9"))))
(assert (str.in_re y (re.++ (re.* (str.to_re "367")) (re.union (str.to_re "68") (str.to_re "905")))))

(assert (< (+ (* (- 9) (str.to_int x)) (* 8 (str.to_int y))) 58))
(assert (<= (+ (* (- 6) (str.len x)) (* (- 2) (str.len y))) 100))
(assert (= (+ (- (str.len x)) (* 5 (str.len y))) 53))
(assert (>= (+ (* 10 (str.to_int x)) (* 2 (str.to_int y))) 12))

(check-sat)