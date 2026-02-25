(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "53")))

(assert (str.in_re x (re.+ (re.union (re.+ (re.+ (str.to_re "312"))) (str.to_re "36")))))
(assert (str.in_re y (re.union (str.to_re "8") (re.union (re.* (re.range "3" "6")) (str.to_re "56")))))

(assert (<= (+ (* (- 9) (str.len x)) (* 8 (str.to_int y))) 69))
(assert (>= (+ (* 7 (str.len x)) (* (- 5) (str.len y))) 80))

(check-sat)