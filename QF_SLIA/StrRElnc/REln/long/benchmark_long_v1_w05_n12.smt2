(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (str.to_re "797") (re.union (re.* (str.to_re "88")) (str.to_re "284"))))))

(assert (= (+ (* (- 4) (str.len x)) (* 4 (str.to_int x))) 71))
(assert (= (* 7 (str.len x)) 9))
(assert (<= (+ (* 8 (str.len x)) (* 6 (str.to_int x))) 57))

(check-sat)