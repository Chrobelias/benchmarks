(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "52") (re.++ (re.+ (str.to_re "34")) (str.to_re "361"))))))

(assert (< (* 6 (str.to_int x)) 99))
(assert (<= (* (- 7) (str.len x)) 82))
(assert (<= (str.len x) 42))
(assert (<= (+ (* 2 (str.len x)) (* 10 (str.to_int x))) 83))

(check-sat)