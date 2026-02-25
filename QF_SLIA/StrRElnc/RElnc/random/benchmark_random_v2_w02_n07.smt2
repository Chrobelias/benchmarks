(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "23")))

(assert (str.in_re x (re.union (str.to_re "212") (re.* (str.to_re "572")))))
(assert (str.in_re y (re.union (re.+ (re.range "0" "9")) (str.to_re "444"))))

(assert (>= (+ (* (- 3) (str.len y)) (* 5 (str.to_int y))) 84))

(check-sat)