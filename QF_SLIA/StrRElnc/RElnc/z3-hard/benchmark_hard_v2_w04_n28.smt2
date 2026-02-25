(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "64" x)))

(assert (str.in_re x (re.union (str.to_re "34") (re.+ (str.to_re "2")))))
(assert (str.in_re y (re.union (re.* (re.union (re.* (re.range "2" "6")) (str.to_re "177"))) (str.to_re "536"))))

(assert (= (+ (* 6 (str.len x)) (* (- 7) (str.to_int x))) 47))
(assert (< (+ (* (- 6) (str.len y)) (* 10 (str.to_int y))) 33))

(check-sat)