(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "110") (re.+ (str.to_re "71")))))
(assert (str.in_re x (re.+ (str.to_re "791"))))

(assert (= (+ (* 5 (str.len x)) (* (- 7) (str.len y)) (* (- 3) (str.to_int x))) 72))

(check-sat)