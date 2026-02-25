(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "15") (re.+ (re.++ (str.to_re "2") (str.to_re "226"))))))

(assert (= (+ (* 9 (str.len x)) (* 7 (str.to_int x))) 68))
(assert (<= (* (- 10) (str.len x)) 2))

(check-sat)