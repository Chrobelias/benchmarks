(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "7"))))

(assert (<= (* 4 (str.to_int x)) 51))
(assert (> (+ (str.len x) (* 10 (str.to_int x))) 0))
(assert (>= (+ (* 5 (str.len x)) (* (- 3) (str.to_int x))) 39))

(check-sat)