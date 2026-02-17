(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (re.union (str.to_re "47") (str.to_re "469"))) (str.to_re "86"))))

(assert (<= (+ (* (- 2) (str.len x)) (* (- 6) (str.to_int x))) 0))
(assert (>= (+ (* 4 (str.len x)) (* (- 8) (str.to_int x))) 73))

(check-sat)