(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.union (str.to_re "23") (re.+ (str.to_re "41"))) (re.+ (str.to_re "701")))))

(assert (<= (+ (* 6 (str.len x)) (str.to_int x)) 12))
(assert (>= (+ (* 10 (str.len x)) (* 2 (str.to_int x))) 17))

(check-sat)