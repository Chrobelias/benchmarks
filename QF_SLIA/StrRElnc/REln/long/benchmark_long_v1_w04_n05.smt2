(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.union (str.to_re "97") (re.++ (re.* (str.to_re "98")) (str.to_re "6"))))))

(assert (= (* (- 4) (str.len x)) 90))
(assert (<= (* 6 (str.to_int x)) 42))
(assert (<= (* (- 10) (str.len x)) 7))
(assert (>= (* (- 10) (str.to_int x)) 68))

(check-sat)