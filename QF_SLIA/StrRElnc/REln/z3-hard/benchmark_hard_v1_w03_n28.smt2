(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.++ (str.to_re "41") (re.+ (str.to_re "457"))) (re.+ (str.to_re "80")))))

(assert (= (+ (* 7 (str.len x)) (* (- 10) (str.to_int x))) 85))
(assert (> (* 2 (str.len x)) 46))

(check-sat)