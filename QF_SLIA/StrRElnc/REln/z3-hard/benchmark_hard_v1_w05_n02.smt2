(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (re.+ (str.to_re "34"))) (str.to_re "443"))))

(assert (<= (+ (* (- 10) (str.len x)) (* 5 (str.to_int x))) 92))
(assert (>= (+ (* (- 4) (str.len x)) (* 3 (str.to_int x))) 80))
(assert (<= (* (- 3) (str.to_int x)) 99))

(check-sat)