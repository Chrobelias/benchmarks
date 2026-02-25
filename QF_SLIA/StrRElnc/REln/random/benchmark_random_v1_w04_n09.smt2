(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "44") (re.++ (str.to_re "691") (str.to_re "8"))))))

(assert (>= (* 8 (str.to_int x)) 35))
(assert (<= (* 10 (str.to_int x)) 59))
(assert (<= (* (- 4) (str.len x)) 59))
(assert (= (* 9 (str.len x)) 35))

(check-sat)