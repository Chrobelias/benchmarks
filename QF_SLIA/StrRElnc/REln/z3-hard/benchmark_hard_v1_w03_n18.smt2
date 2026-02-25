(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "221") (re.* (str.to_re "748")))))

(assert (>= (+ (* 10 (str.len x)) (* (- 3) (str.to_int x))) 5))
(assert (> (* 7 (str.to_int x)) 11))

(check-sat)