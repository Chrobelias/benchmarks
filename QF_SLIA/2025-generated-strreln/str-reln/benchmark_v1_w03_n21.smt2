(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (re.union (re.* (str.to_re "348")) (str.to_re "99"))) (str.to_re "391"))))

(assert (< (+ (* (- 8) (str.len x)) (* (- 7) (str.to_int x))) 81))
(assert (< (* 5 (str.to_int x)) 33))

(check-sat)