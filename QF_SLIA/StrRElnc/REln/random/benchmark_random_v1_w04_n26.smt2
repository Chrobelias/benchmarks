(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "150") (re.++ (str.to_re "539") (re.* (str.to_re "5"))))))

(assert (>= (* (- 3) (str.len x)) 83))
(assert (= (+ (* 5 (str.len x)) (* 4 (str.to_int x))) 46))
(assert (<= (* 6 (str.len x)) 44))

(check-sat)