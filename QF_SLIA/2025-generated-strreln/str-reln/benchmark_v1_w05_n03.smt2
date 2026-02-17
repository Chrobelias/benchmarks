(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "222") (re.* (str.to_re "10"))) (str.to_re "575"))))

(assert (> (+ (str.len x) (* 2 (str.to_int x))) 45))
(assert (= (+ (* (- 9) (str.len x)) (* 5 (str.to_int x))) 1))
(assert (>= (* 6 (str.len x)) 13))

(check-sat)