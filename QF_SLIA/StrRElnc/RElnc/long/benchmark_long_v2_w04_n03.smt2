(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= y (str.++ "47" x)))

(assert (str.in_re x (re.union (re.+ (str.to_re "40")) (re.union (re.* (str.to_re "36")) (str.to_re "598")))))
(assert (str.in_re y (re.* (re.union (re.union (re.range "0" "9") (str.to_re "389")) (str.to_re "34")))))

(assert (<= (+ (* 3 (str.len x)) (- (str.to_int y))) 82))
(assert (<= (+ (* 3 (str.len x)) (str.len y)) 17))
(assert (> (+ (* 6 (str.len x)) (* 7 (str.len y))) 44))

(check-sat)