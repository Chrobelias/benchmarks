(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (str.to_re "58") (re.* (str.to_re "60")))))

(assert (>= (+ (* (- 5) (str.len x)) (* 7 (str.to_int x))) 44))
(assert (<= (+ (* (- 2) (str.len x)) (* (- 5) (str.to_int x))) 44))

(check-sat)