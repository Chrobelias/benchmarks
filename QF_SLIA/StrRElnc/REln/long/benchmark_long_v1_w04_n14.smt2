(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.++ (str.to_re "414") (str.to_re "946")))))

(assert (= (* 5 (str.to_int x)) 26))
(assert (<= (* (- 10) (str.to_int x)) 0))
(assert (< (* (- 9) (str.len x)) 0))
(assert (> (* (- 10) (str.to_int x)) 78))

(check-sat)