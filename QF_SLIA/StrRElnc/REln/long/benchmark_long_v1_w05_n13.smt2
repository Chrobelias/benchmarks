(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.++ (str.to_re "758") (str.to_re "801")))))

(assert (<= (str.to_int x) 9))
(assert (= (* 5 (str.len x)) 13))
(assert (> (* 10 (str.len x)) 62))
(assert (>= (+ (* 6 (str.len x)) (* 3 (str.to_int x))) 14))

(check-sat)