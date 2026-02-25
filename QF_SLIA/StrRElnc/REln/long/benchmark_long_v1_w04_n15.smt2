(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "467") (str.to_re "229"))))))

(assert (<= (+ (* 9 (str.len x)) (* 5 (str.to_int x))) 54))
(assert (<= (* (- 5) (str.to_int x)) 33))
(assert (<= (* (- 4) (str.len x)) 95))

(check-sat)