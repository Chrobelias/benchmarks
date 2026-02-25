(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "69"))))

(assert (>= (+ (* 5 (str.len x)) (* 10 (str.to_int x))) 99))
(assert (>= (+ (* 2 (str.len x)) (* (- 3) (str.to_int x))) 55))

(check-sat)