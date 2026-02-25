(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (re.* (str.to_re "766")) (re.* (str.to_re "31"))))))

(assert (>= (* 3 (str.to_int x)) 88))
(assert (>= (+ (* (- 5) (str.len x)) (* (- 10) (str.to_int x))) 8))
(assert (> (* 9 (str.len x)) 80))
(assert (< (* (- 6) (str.to_int x)) 15))

(check-sat)