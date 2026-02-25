(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (re.++ (str.to_re "91") (re.+ (str.to_re "422"))))))
(assert (str.in_re x (re.++ (str.to_re "8") (re.union (re.* (str.to_re "606")) (str.to_re "134")))))

(assert (> (+ (* (- 10) (str.len y)) (* 2 (str.to_int x))) 83))
(assert (= (* 3 (str.len x)) 62))

(check-sat)