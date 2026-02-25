(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (str.to_re "80") (re.++ (re.* (str.to_re "24")) (str.to_re "58"))))))

(assert (= (* (- 4) (str.to_int x)) 98))
(assert (> (* 5 (str.len x)) 62))

(check-sat)