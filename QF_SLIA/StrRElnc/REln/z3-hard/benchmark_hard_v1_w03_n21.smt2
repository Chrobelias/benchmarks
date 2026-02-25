(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.* (re.+ (str.to_re "43"))) (str.to_re "47")) (str.to_re "424"))))

(assert (> (* 5 (str.to_int x)) 3))
(assert (> (+ (* 2 (str.len x)) (* (- 10) (str.to_int x))) 70))

(check-sat)