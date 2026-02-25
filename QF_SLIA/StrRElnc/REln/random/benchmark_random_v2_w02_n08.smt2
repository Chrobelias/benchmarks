(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (str.to_re "19"))))
(assert (str.in_re y (re.++ (re.union (str.to_re "113") (str.to_re "35")) (re.+ (str.to_re "7")))))

(assert (<= (+ (* 6 (str.len x)) (* (- 5) (str.to_int x)) (* (- 9) (str.to_int y))) 99))

(check-sat)