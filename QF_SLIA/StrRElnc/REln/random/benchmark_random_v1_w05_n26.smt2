(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "378") (re.++ (str.to_re "88") (str.to_re "59"))))))

(assert (> (+ (* (- 10) (str.len x)) (* (- 2) (str.to_int x))) 77))
(assert (<= (* (- 3) (str.len x)) 37))
(assert (<= (str.to_int x) 69))
(assert (= (* 10 (str.len x)) 91))

(check-sat)