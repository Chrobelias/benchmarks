(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ y "73")))

(assert (str.in_re x (re.union (str.to_re "43") (re.* (re.+ (re.range "2" "8"))))))
(assert (str.in_re y (re.* (str.to_re "785"))))

(assert (<= (+ (* 5 (str.len x)) (* 6 (str.to_int x)) (* (- 10) (str.to_int y))) 97))

(check-sat)