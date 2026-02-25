(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.union (re.++ (str.to_re "882") (str.to_re "2")) (str.to_re "7")))))
(assert (str.in_re y (re.* (re.union (re.++ (re.range "3" "6") (str.to_re "27")) (str.to_re "471")))))

(assert (= (* 5 (str.len y)) 37))
(assert (= (+ (* 10 (str.to_int x)) (* (- 5) (str.to_int y))) 10))

(check-sat)