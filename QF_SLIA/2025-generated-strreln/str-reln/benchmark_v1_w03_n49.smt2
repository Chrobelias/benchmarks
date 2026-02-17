(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "7")) (str.to_re "59"))))

(assert (<= (* 3 (str.to_int x)) 77))
(assert (< (+ (* 6 (str.len x)) (* (- 5) (str.to_int x))) 51))

(check-sat)