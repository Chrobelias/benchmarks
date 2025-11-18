(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (str.to_re "224") (re.++ (re.+ (str.to_re "736")) (str.to_re "64")))))
(assert (str.in_re y (re.* (re.range "5" "7"))))

(assert (<= (+ (* (- 4) (str.len x)) (* (- 2) (str.len y))) 49))
(assert (= (+ (* (- 9) (str.to_int x)) (* 5 (str.to_int y))) 47))

(check-sat)