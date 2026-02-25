(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "51")))

(assert (str.in_re x (re.* (re.range "0" "7"))))
(assert (str.in_re y (re.+ (re.union (re.* (str.to_re "803")) (re.* (str.to_re "55"))))))

(assert (= (+ (* (- 8) (str.len y)) (* 10 (str.to_int y))) 28))

(check-sat)