(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (str.to_re "6") (re.+ (str.to_re "3")))))
(assert (str.in_re x (re.++ (re.* (re.* (re.range "0" "3"))) (re.range "5" "8"))))

(assert (>= (+ (* (- 6) (str.len x)) (* 5 (str.len y))) 99))
(assert (> (* 8 (str.to_int x)) 55))

(check-sat)