(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (re.+ (re.union (re.range "4" "8") (str.to_re "78"))))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "21")) (str.to_re "1"))))

(assert (= (+ (* 5 (str.len x)) (* (- 10) (str.len y))) 33))
(assert (>= (+ (* (- 6) (str.len x)) (* (- 10) (str.len y))) 88))
(assert (= (+ (* 9 (str.len x)) (* (- 2) (str.to_int x)) (* (- 6) (str.to_int y))) 5))

(check-sat)