(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "951")) (str.to_re "819"))))

(assert (< (+ (* (- 10) (str.len x)) (* 8 (str.to_int x))) 4))
(assert (> (str.len x) 19))

(check-sat)