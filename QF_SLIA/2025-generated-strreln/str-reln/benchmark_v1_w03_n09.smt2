(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.union (str.to_re "129") (str.to_re "652")) (str.to_re "76")))))

(assert (>= (* 10 (str.to_int x)) 55))
(assert (>= (str.len x) 83))
(assert (<= (* (- 7) (str.len x)) 15))

(check-sat)