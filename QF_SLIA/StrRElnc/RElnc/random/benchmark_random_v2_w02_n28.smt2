(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "55")))

(assert (str.in_re y (re.+ (str.to_re "5"))))
(assert (str.in_re x (re.union (re.union (str.to_re "49") (re.+ (re.range "1" "7"))) (str.to_re "97"))))

(assert (= (+ (* 3 (str.to_int x)) (* 3 (str.to_int y))) 82))
(assert (>= (+ (* (- 5) (str.len x)) (* 5 (str.len y))) 91))

(check-sat)