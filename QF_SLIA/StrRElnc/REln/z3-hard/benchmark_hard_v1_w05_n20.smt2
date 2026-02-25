(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "358") (re.++ (re.* (str.to_re "58")) (str.to_re "2")))))

(assert (<= (+ (* (- 10) (str.len x)) (* 6 (str.to_int x))) 74))
(assert (< (+ (* (- 5) (str.len x)) (* (- 9) (str.to_int x))) 7))
(assert (<= (* 8 (str.to_int x)) 92))

(check-sat)