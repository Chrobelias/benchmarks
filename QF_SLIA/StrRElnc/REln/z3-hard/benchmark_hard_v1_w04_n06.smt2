(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "373") (re.* (str.to_re "81"))) (re.* (str.to_re "2")))))

(assert (< (* (- 2) (str.len x)) 16))
(assert (< (str.to_int x) 33))
(assert (> (* 7 (str.len x)) 39))
(assert (< (* (- 7) (str.len x)) 17))

(check-sat)